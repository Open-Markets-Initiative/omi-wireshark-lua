-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bse BseIndia Eobi Fbe 1.4 Protocol
local omi_bse_bseindia_eobi_fbe_v1_4 = Proto("Omi.Bse.BseIndia.Eobi.Fbe.v1.4", "Bse BseIndia Eobi Fbe 1.4")

-- Protocol table
local bse_bseindia_eobi_fbe_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bse BseIndia Eobi Fbe 1.4 Fields
omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_side = ProtoField.new("Aggressor Side", "bse.bseindia.eobi.fbe.v1.4.aggressorside", ftypes.UINT8, nil, nil, nil, "Side of the incoming order.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_timestamp = ProtoField.new("Aggressor Timestamp", "bse.bseindia.eobi.fbe.v1.4.aggressortimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Always identical to the matching engine in timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_timestamp_utc = ProtoField.new("Aggressor Timestamp", "bse.bseindia.eobi.fbe.v1.4.aggressortimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Always identical to the matching engine in timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "bse.bseindia.eobi.fbe.v1.4.applseqnum", ftypes.UINT32, nil, nil, nil, "Packet sequence number, contiguous and incremented per multicast address and port")
omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_reset_indicator = ProtoField.new("Appl Seq Reset Indicator", "bse.bseindia.eobi.fbe.v1.4.applseqresetindicator", ftypes.UINT8, nil, nil, nil, "Set in the first packet header after a market data fail over or restart, 0 No Reset and 1 Reset")
omi_bse_bseindia_eobi_fbe_v1_4.fields.bid_px = ProtoField.new("Bid Px", "bse.bseindia.eobi.fbe.v1.4.bidpx", ftypes.DOUBLE, nil, nil, nil, "Bid price/rate.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.body_len = ProtoField.new("Body Len", "bse.bseindia.eobi.fbe.v1.4.bodylen", ftypes.UINT16, nil, nil, nil, "Number of bytes for the message, including this field")
omi_bse_bseindia_eobi_fbe_v1_4.fields.close_price = ProtoField.new("Close Price", "bse.bseindia.eobi.fbe.v1.4.closeprice", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.completion_indicator = ProtoField.new("Completion Indicator", "bse.bseindia.eobi.fbe.v1.4.completionindicator", ftypes.UINT8, nil, nil, nil, "Indicates whether a unit of work fits into a single datagram, 0 Incomplete and 1 Complete")
omi_bse_bseindia_eobi_fbe_v1_4.fields.display_qty = ProtoField.new("Display Qty", "bse.bseindia.eobi.fbe.v1.4.displayqty", ftypes.INT64, nil, nil, nil, "Quantity.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.eobi_header = ProtoField.new("Eobi Header", "bse.bseindia.eobi.fbe.v1.4.eobiheader", ftypes.STRING, nil, nil, nil, "Body Len, Template Id, and Msg Seq Num opening the Packet Header")
omi_bse_bseindia_eobi_fbe_v1_4.fields.exec_id = ProtoField.new("Exec Id", "bse.bseindia.eobi.fbe.v1.4.execid", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Matching timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.exec_id_utc = ProtoField.new("Exec Id", "bse.bseindia.eobi.fbe.v1.4.execid.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Matching timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "bse.bseindia.eobi.fbe.v1.4.fastmarketindicator", ftypes.UINT8, nil, nil, nil, "Indicates if product is in the state Fast Market.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "bse.bseindia.eobi.fbe.v1.4.impliedmarketindicator", ftypes.UINT8, nil, nil, nil, "Indicates that an implied market to be created for either the legs of a multi-leg instrument or for the multi-leg instrument based on the existence of the legs.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "bse.bseindia.eobi.fbe.v1.4.instrmtleggrp", ftypes.STRING, nil, nil, nil, "Leg definitions repeated NoLegs times in the Add Complex Instrument Message.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "bse.bseindia.eobi.fbe.v1.4.lastmsgseqnumprocessed", ftypes.UINT32, nil, nil, nil, "Last Message Sequence number that was processed.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_px = ProtoField.new("Last Px", "bse.bseindia.eobi.fbe.v1.4.lastpx", ftypes.DOUBLE, nil, nil, nil, "Indicating the potential Auction price for a crossed order book.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_qty = ProtoField.new("Last Qty", "bse.bseindia.eobi.fbe.v1.4.lastqty", ftypes.INT64, nil, nil, nil, "The potential matchable quantity for the auction.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_update_time = ProtoField.new("Last Update Time", "bse.bseindia.eobi.fbe.v1.4.lastupdatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last update time of the corresponding order book.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_update_time_utc = ProtoField.new("Last Update Time", "bse.bseindia.eobi.fbe.v1.4.lastupdatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last update time of the corresponding order book.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "bse.bseindia.eobi.fbe.v1.4.legratioqty", ftypes.INT32, nil, nil, nil, "The ratio of quantity for this individual leg relative to the entire multi-leg security.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_security_id = ProtoField.new("Leg Security Id", "bse.bseindia.eobi.fbe.v1.4.legsecurityid", ftypes.INT64, nil, nil, nil, "Instrument identifier of the leg security.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_side = ProtoField.new("Leg Side", "bse.bseindia.eobi.fbe.v1.4.legside", ftypes.UINT8, nil, nil, nil, "The side of the individual leg of a strategy as defined in signature.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_ckt_limit = ProtoField.new("Lower Ckt Limit", "bse.bseindia.eobi.fbe.v1.4.lowercktlimit", ftypes.DOUBLE, nil, nil, nil, "Lower Circuit Limit Price")
omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_exec_limit = ProtoField.new("Lower Exec Limit", "bse.bseindia.eobi.fbe.v1.4.lowerexeclimit", ftypes.DOUBLE, nil, nil, nil, "Lower Limit Execution Price")
omi_bse_bseindia_eobi_fbe_v1_4.fields.market_segment_id = ProtoField.new("Market Segment Id", "bse.bseindia.eobi.fbe.v1.4.marketsegmentid", ftypes.INT32, nil, nil, nil, "Product identifier")
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_px = ProtoField.new("Md Entry Px", "bse.bseindia.eobi.fbe.v1.4.mdentrypx", ftypes.DOUBLE, nil, nil, nil, "Price.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_size = ProtoField.new("Md Entry Size", "bse.bseindia.eobi.fbe.v1.4.mdentrysize", ftypes.INT64, nil, nil, nil, "Quantity.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_type = ProtoField.new("Md Entry Type", "bse.bseindia.eobi.fbe.v1.4.mdentrytype", ftypes.UINT8, nil, nil, nil, "Type of market data entry.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp = ProtoField.new("Md Instrument Entry Grp", "bse.bseindia.eobi.fbe.v1.4.mdinstrumententrygrp", ftypes.STRING, nil, nil, nil, "Instrument trade statistics repeated NoMDEntries times in the Instrument Summary Message. The group is not cut off by design.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp = ProtoField.new("Md Trade Entry Grp", "bse.bseindia.eobi.fbe.v1.4.mdtradeentrygrp", ftypes.STRING, nil, nil, nil, "Trade statistics repeated NoMDEntries times in the Trade Reversal Message.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.eobi.fbe.v1.4.msgseqnum", ftypes.UINT32, nil, nil, nil, "Message sequence number, incremented per product across all message types")
omi_bse_bseindia_eobi_fbe_v1_4.fields.no_legs = ProtoField.new("No Legs", "bse.bseindia.eobi.fbe.v1.4.nolegs", ftypes.UINT8, nil, nil, nil, "Number of Legs repeating group instances.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.no_md_entries = ProtoField.new("No Md Entries", "bse.bseindia.eobi.fbe.v1.4.nomdentries", ftypes.UINT8, nil, nil, nil, "Number of entries in Market Data message for MDEntryGrp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.no_of_trades = ProtoField.new("No Of Trades", "bse.bseindia.eobi.fbe.v1.4.nooftrades", ftypes.UINT32, nil, nil, nil, "Total number of trades.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.offer_px = ProtoField.new("Offer Px", "bse.bseindia.eobi.fbe.v1.4.offerpx", ftypes.DOUBLE, nil, nil, nil, "Offer price/rate.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_details = ProtoField.new("Order Details", "bse.bseindia.eobi.fbe.v1.4.orderdetails", ftypes.STRING, nil, nil, nil, "OrderDetails")
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_1 = ProtoField.new("Pad 1", "bse.bseindia.eobi.fbe.v1.4.pad1", ftypes.BYTES, nil, nil, nil, "not used")
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_3 = ProtoField.new("Pad 3", "bse.bseindia.eobi.fbe.v1.4.pad3", ftypes.BYTES, nil, nil, nil, "not used")
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_4 = ProtoField.new("Pad 4", "bse.bseindia.eobi.fbe.v1.4.pad4", ftypes.BYTES, nil, nil, nil, "not used")
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_5 = ProtoField.new("Pad 5", "bse.bseindia.eobi.fbe.v1.4.pad5", ftypes.BYTES, nil, nil, nil, "not used")
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_6 = ProtoField.new("Pad 6", "bse.bseindia.eobi.fbe.v1.4.pad6", ftypes.BYTES, nil, nil, nil, "not used")
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_7 = ProtoField.new("Pad 7", "bse.bseindia.eobi.fbe.v1.4.pad7", ftypes.BYTES, nil, nil, nil, "not used")
omi_bse_bseindia_eobi_fbe_v1_4.fields.partition_id = ProtoField.new("Partition Id", "bse.bseindia.eobi.fbe.v1.4.partitionid", ftypes.UINT8, nil, nil, nil, "Grouping of Bse products")
omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_close_price = ProtoField.new("Prev Close Price", "bse.bseindia.eobi.fbe.v1.4.prevcloseprice", ftypes.DOUBLE, nil, nil, nil, "Previous Close Price")
omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "bse.bseindia.eobi.fbe.v1.4.prevdisplayqty", ftypes.INT64, nil, nil, nil, "Previous display quantity")
omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_price = ProtoField.new("Prev Price", "bse.bseindia.eobi.fbe.v1.4.prevprice", ftypes.DOUBLE, nil, nil, nil, "Previous order price.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.price = ProtoField.new("Price", "bse.bseindia.eobi.fbe.v1.4.price", ftypes.DOUBLE, nil, nil, nil, "Reserved for future use.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.product_complex = ProtoField.new("Product Complex", "bse.bseindia.eobi.fbe.v1.4.productcomplex", ftypes.UINT8, nil, nil, nil, "This field qualifies an instrument type on BSE.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "bse.bseindia.eobi.fbe.v1.4.restinghiddenqty", ftypes.INT64, nil, nil, nil, "Quantity of matched passive orders that is not displayed to the market.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_id = ProtoField.new("Security Id", "bse.bseindia.eobi.fbe.v1.4.securityid", ftypes.INT64, nil, nil, nil, "Unique instrument identifier.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_status = ProtoField.new("Security Status", "bse.bseindia.eobi.fbe.v1.4.securitystatus", ftypes.UINT8, nil, nil, nil, "Instrument status.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_sub_type = ProtoField.new("Security Sub Type", "bse.bseindia.eobi.fbe.v1.4.securitysubtype", ftypes.INT32, nil, nil, nil, "Strategy Type.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_trading_status = ProtoField.new("Security Trading Status", "bse.bseindia.eobi.fbe.v1.4.securitytradingstatus", ftypes.UINT8, nil, nil, nil, "Instrument state status.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.side = ProtoField.new("Side", "bse.bseindia.eobi.fbe.v1.4.side", ftypes.UINT8, nil, nil, nil, "Side of the order.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.template_id = ProtoField.new("Template Id", "bse.bseindia.eobi.fbe.v1.4.templateid", ftypes.UINT16, nil, nil, nil, "Unique identifier for a Bse Eobi message layout")
omi_bse_bseindia_eobi_fbe_v1_4.fields.tot_no_orders = ProtoField.new("Tot No Orders", "bse.bseindia.eobi.fbe.v1.4.totnoorders", ftypes.UINT32, nil, nil, nil, "Corresponding number of orders for this instrument.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bse.bseindia.eobi.fbe.v1.4.tradsesstatus", ftypes.UINT8, nil, nil, nil, "Miscellaneous state information.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_condition = ProtoField.new("Trade Condition", "bse.bseindia.eobi.fbe.v1.4.tradecondition", ftypes.UINT8, nil, nil, nil, "Indicates whether a synthetic match is occured.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_volume = ProtoField.new("Trade Volume", "bse.bseindia.eobi.fbe.v1.4.tradevolume", ftypes.INT64, nil, nil, nil, "Cumulative volume of units traded in the day.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_id = ProtoField.new("Trading Session Id", "bse.bseindia.eobi.fbe.v1.4.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Miscellaneous state information.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bse.bseindia.eobi.fbe.v1.4.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Product state information.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.transact_time = ProtoField.new("Transact Time", "bse.bseindia.eobi.fbe.v1.4.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Transaction timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.transact_time_utc = ProtoField.new("Transact Time", "bse.bseindia.eobi.fbe.v1.4.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Transaction timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_match_id = ProtoField.new("Trd Match Id", "bse.bseindia.eobi.fbe.v1.4.trdmatchid", ftypes.UINT32, nil, nil, nil, "Unique identifier for each price level of a match event.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "bse.bseindia.eobi.fbe.v1.4.trdregtsexecutiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last matching execution timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_execution_time_utc = ProtoField.new("Trd Reg Ts Execution Time", "bse.bseindia.eobi.fbe.v1.4.trdregtsexecutiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last matching execution timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg Ts Prev Time Priority", "bse.bseindia.eobi.fbe.v1.4.trdregtsprevtimepriority", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Previous order priority timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_prev_time_priority_utc = ProtoField.new("Trd Reg Ts Prev Time Priority", "bse.bseindia.eobi.fbe.v1.4.trdregtsprevtimepriority.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Previous order priority timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "bse.bseindia.eobi.fbe.v1.4.trdregtstimein", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Matching engine In timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_in_utc = ProtoField.new("Trd Reg Ts Time In", "bse.bseindia.eobi.fbe.v1.4.trdregtstimein.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Matching engine In timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "bse.bseindia.eobi.fbe.v1.4.trdregtstimepriority", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Priority timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_priority_utc = ProtoField.new("Trd Reg Ts Time Priority", "bse.bseindia.eobi.fbe.v1.4.trdregtstimepriority.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Priority timestamp.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_ckt_limit = ProtoField.new("Upper Ckt Limit", "bse.bseindia.eobi.fbe.v1.4.uppercktlimit", ftypes.DOUBLE, nil, nil, nil, "Upper Circuit Limit Price")
omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_exec_limit = ProtoField.new("Upper Exec Limit", "bse.bseindia.eobi.fbe.v1.4.upperexeclimit", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Execution Price")

-- Bse BseIndia Eobi Fbe 1.4 Framing
omi_bse_bseindia_eobi_fbe_v1_4.fields.message = ProtoField.new("Message", "bse.bseindia.eobi.fbe.v1.4.message", ftypes.STRING, nil, nil, nil, "Bse Eobi Message")
omi_bse_bseindia_eobi_fbe_v1_4.fields.message_header = ProtoField.new("Message Header", "bse.bseindia.eobi.fbe.v1.4.messageheader", ftypes.STRING, nil, nil, nil, "Body Len, Template Id, and Msg Seq Num opening every message behind the Packet Header")
omi_bse_bseindia_eobi_fbe_v1_4.fields.packet = ProtoField.new("Packet", "bse.bseindia.eobi.fbe.v1.4.packet", ftypes.STRING, nil, nil, nil, "Bse Eobi Packet")
omi_bse_bseindia_eobi_fbe_v1_4.fields.packet_header = ProtoField.new("Packet Header", "bse.bseindia.eobi.fbe.v1.4.packetheader", ftypes.STRING, nil, nil, nil, "Technical header delivered in every Udp datagram, identifying the product, the partition, and the send time")

-- Bse BseIndia Eobi 1.4 Application Messages
omi_bse_bseindia_eobi_fbe_v1_4.fields.add_complex_instrument_message = ProtoField.new("Add Complex Instrument Message", "bse.bseindia.eobi.fbe.v1.4.addcomplexinstrumentmessage", ftypes.STRING, nil, nil, nil, "Published whenever a new complex instrument is created intraday or an existing complex instrument is modified.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_best_bid_offer_message = ProtoField.new("Auction Best Bid Offer Message", "bse.bseindia.eobi.fbe.v1.4.auctionbestbidoffermessage", ftypes.STRING, nil, nil, nil, "Carries the best bid and offer of a non crossed order book during an auction call phase.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_clearing_price_message = ProtoField.new("Auction Clearing Price Message", "bse.bseindia.eobi.fbe.v1.4.auctionclearingpricemessage", ftypes.STRING, nil, nil, nil, "Published for a crossed order book in an auction, indicating the potential auction price.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.execution_summary_message = ProtoField.new("Execution Summary Message", "bse.bseindia.eobi.fbe.v1.4.executionsummarymessage", ftypes.STRING, nil, nil, nil, "Published whenever an incoming order is executed, carrying information on the execution of that incoming order.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.full_order_execution_message = ProtoField.new("Full Order Execution Message", "bse.bseindia.eobi.fbe.v1.4.fullorderexecutionmessage", ftypes.STRING, nil, nil, nil, "Published whenever a visible order is fully executed at its displayed price.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bse.bseindia.eobi.fbe.v1.4.heartbeatmessage", ftypes.STRING, nil, nil, nil, "Published regularly when there is no activity on the snapshot or the incremental channel.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_info_message = ProtoField.new("Instrument Info Message", "bse.bseindia.eobi.fbe.v1.4.instrumentinfomessage", ftypes.STRING, nil, nil, nil, "Published whenever there is a change in the daily price range of the instrument.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_state_change_message = ProtoField.new("Instrument State Change Message", "bse.bseindia.eobi.fbe.v1.4.instrumentstatechangemessage", ftypes.STRING, nil, nil, nil, "Provides state information for a single instrument.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_summary_message = ProtoField.new("Instrument Summary Message", "bse.bseindia.eobi.fbe.v1.4.instrumentsummarymessage", ftypes.STRING, nil, nil, nil, "Published for each instrument in one snapshot cycle, carrying instrument state information and trade statistics.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.lpp_range_message = ProtoField.new("Lpp Range Message", "bse.bseindia.eobi.fbe.v1.4.lpprangemessage", ftypes.STRING, nil, nil, nil, "Published whenever there is a change in the limit price protection range of the instrument.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_add_message = ProtoField.new("Order Add Message", "bse.bseindia.eobi.fbe.v1.4.orderaddmessage", ftypes.STRING, nil, nil, nil, "Published for each new order that was entered in the order book.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_delete_message = ProtoField.new("Order Delete Message", "bse.bseindia.eobi.fbe.v1.4.orderdeletemessage", ftypes.STRING, nil, nil, nil, "Published whenever an existing order is deleted from the order book.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_mass_delete_message = ProtoField.new("Order Mass Delete Message", "bse.bseindia.eobi.fbe.v1.4.ordermassdeletemessage", ftypes.STRING, nil, nil, nil, "Published when the order book is expected to be emptied.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_message = ProtoField.new("Order Modify Message", "bse.bseindia.eobi.fbe.v1.4.ordermodifymessage", ftypes.STRING, nil, nil, nil, "Published if an existing order in the book is modified, whereby the new parameters might cause a change in time priority.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_same_priority_message = ProtoField.new("Order Modify Same Priority Message", "bse.bseindia.eobi.fbe.v1.4.ordermodifysameprioritymessage", ftypes.STRING, nil, nil, nil, "Published if the time priority of an existing order is not changed.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.partial_order_execution_message = ProtoField.new("Partial Order Execution Message", "bse.bseindia.eobi.fbe.v1.4.partialorderexecutionmessage", ftypes.STRING, nil, nil, nil, "Published whenever a visible order is partially executed at its displayed price.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.product_state_change_message = ProtoField.new("Product State Change Message", "bse.bseindia.eobi.fbe.v1.4.productstatechangemessage", ftypes.STRING, nil, nil, nil, "Provides updates on the trading state for all instruments in a particular product.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.product_summary_message = ProtoField.new("Product Summary Message", "bse.bseindia.eobi.fbe.v1.4.productsummarymessage", ftypes.STRING, nil, nil, nil, "Published once each snapshot cycle, carrying attributes that are equal for all instruments in the product.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.snapshot_order_message = ProtoField.new("Snapshot Order Message", "bse.bseindia.eobi.fbe.v1.4.snapshotordermessage", ftypes.STRING, nil, nil, nil, "Represents each individual order or quote in a snapshot cycle on the snapshot channel.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "bse.bseindia.eobi.fbe.v1.4.topofbookmessage", ftypes.STRING, nil, nil, nil, "Carries the best bid and offer of an order book outside continuous trading.")
omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_reversal_message = ProtoField.new("Trade Reversal Message", "bse.bseindia.eobi.fbe.v1.4.tradereversalmessage", ftypes.STRING, nil, nil, nil, "Published when a trade is reversed.")

-- Bse BseIndia Eobi Fbe 1.4 Generated Fields
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp_index = ProtoField.new("Instrmt Leg Grp Index", "bse.bseindia.eobi.fbe.v1.4.instrmtleggrpindex", ftypes.UINT16)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp_index = ProtoField.new("Md Instrument Entry Grp Index", "bse.bseindia.eobi.fbe.v1.4.mdinstrumententrygrpindex", ftypes.UINT16)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp_index = ProtoField.new("Md Trade Entry Grp Index", "bse.bseindia.eobi.fbe.v1.4.mdtradeentrygrpindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bse BseIndia Eobi Fbe 1.4 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
bse_bseindia_eobi_fbe_v1_4.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bse BseIndia Eobi Fbe 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Bse BseIndia Eobi Fbe 1.4 Show Options
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bse_bseindia_eobi_fbe_v1_4.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_bse_bseindia_eobi_fbe_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_application_messages then
    show.application_messages = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_headers then
    show.headers = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_headers
  end
  if show.repeating_groups ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_repeating_groups then
    show.repeating_groups = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_repeating_groups
  end
  if show.structs ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_structs then
    show.structs = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_structs
  end
  if show.indexes ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_indexes then
    show.indexes = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_indexes
  end
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.absolute_time_base then
    bse_bseindia_eobi_fbe_v1_4.absolute_time_base = omi_bse_bseindia_eobi_fbe_v1_4.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Bse BseIndia Eobi Fbe 1.4 Fields
-----------------------------------------------------------------------

-- Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side = {}

-- Size: Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side.size = 1

-- Display: Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side.labels = {
  [1] = "Aggressor Side: Buy (1)",
  [2] = "Aggressor Side: Sell (2)",
}

bse_bseindia_eobi_fbe_v1_4.aggressor_side.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.aggressor_side.labels[value] or "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp = {}

-- Size: Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.size = 8

-- Dissect: Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_timestamp
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_timestamp_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Aggressor Timestamp: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num = {}

-- Size: Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num.size = 4

-- Display: Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num.display = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator = {}

-- Size: Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.size = 1

-- Display: Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.display = function(value)
  return "Appl Seq Reset Indicator: "..value
end

-- Dissect: Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_reset_indicator, range, value, display)

  return offset + length, value
end

-- Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px = {}

-- Size: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.size = 8

-- Display: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.bid_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Body Len
bse_bseindia_eobi_fbe_v1_4.body_len = {}

-- Size: Body Len
bse_bseindia_eobi_fbe_v1_4.body_len.size = 2

-- Display: Body Len
bse_bseindia_eobi_fbe_v1_4.body_len.display = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
bse_bseindia_eobi_fbe_v1_4.body_len.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.body_len, range, value, display)

  return offset + length, value
end

-- Close Price
bse_bseindia_eobi_fbe_v1_4.close_price = {}

-- Size: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.size = 8

-- Display: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Close Price: No Value"
  end

  return "Close Price: "..value
end

-- Translate: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.close_price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.close_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.close_price, range, value, display)

  return offset + length, value
end

-- Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator = {}

-- Size: Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator.size = 1

-- Display: Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator.display = function(value)
  return "Completion Indicator: "..value
end

-- Dissect: Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.completion_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.completion_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.completion_indicator, range, value, display)

  return offset + length, value
end

-- Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty = {}

-- Size: Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty.size = 8

-- Display: Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id = {}

-- Size: Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id.size = 8

-- Dissect: Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.exec_id
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.exec_id_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator = {}

-- Size: Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size = 1

-- Display: Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.labels = {
  [0] = "Fast Market Indicator: No (0)",
  [1] = "Fast Market Indicator: Yes (1)",
}

bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.labels[value] or "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.fast_market_indicator, range, value, display)

  return offset + length, value
end

-- Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator = {}

-- Size: Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.size = 1

-- Display: Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.labels = {
  [0] = "Implied Market Indicator: Not Implied (0)",
  [3] = "Implied Market Indicator: Implied In Out (3)",
}

bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.labels[value] or "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed = {}

-- Size: Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.display = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Last Px
bse_bseindia_eobi_fbe_v1_4.last_px = {}

-- Size: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.size = 8

-- Display: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.last_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty = {}

-- Size: Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty.size = 8

-- Display: Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time = {}

-- Size: Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time.size = 8

-- Dissect: Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.last_update_time
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.last_update_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id = {}

-- Size: Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id.size = 8

-- Display: Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side = {}

-- Size: Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side.size = 1

-- Display: Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side.labels = {
  [1] = "Leg Side: Buy (1)",
  [2] = "Leg Side: Sell (2)",
}

bse_bseindia_eobi_fbe_v1_4.leg_side.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit = {}

-- Size: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.size = 8

-- Display: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Lower Ckt Limit: No Value"
  end

  return "Lower Ckt Limit: "..value
end

-- Translate: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_ckt_limit, range, value, display)

  return offset + length, value
end

-- Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit = {}

-- Size: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.size = 8

-- Display: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.display = function(value)
  return "Lower Exec Limit: "..value
end

-- Translate: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_exec_limit, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id = {}

-- Size: Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id.size = 4

-- Display: Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eobi_fbe_v1_4.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px = {}

-- Size: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.size = 8

-- Display: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.md_entry_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.md_entry_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size = {}

-- Size: Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size.size = 8

-- Display: Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type = {}

-- Size: Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type.size = 1

-- Display: Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type.labels = {
  [2] = "Md Entry Type: Trade (2)",
  [4] = "Md Entry Type: Opening Price (4)",
  [5] = "Md Entry Type: Closing Price (5)",
  [7] = "Md Entry Type: High Price (7)",
  [8] = "Md Entry Type: Low Price (8)",
  [101] = "Md Entry Type: Previous Closing Price (101)",
  [200] = "Md Entry Type: Opening Auction (200)",
  [201] = "Md Entry Type: Intraday Auction (201)",
  [202] = "Md Entry Type: Circuit Breaker Auction (202)",
  [203] = "Md Entry Type: Closing Auction (203)",
  [204] = "Md Entry Type: Upper Ckt Limit (204)",
  [205] = "Md Entry Type: Lower Ckt Limit (205)",
  [206] = "Md Entry Type: Gross Trade Amt (206)",
  [208] = "Md Entry Type: Upper Exec Limit (208)",
  [209] = "Md Entry Type: Lower Exec Limit (209)",
}

bse_bseindia_eobi_fbe_v1_4.md_entry_type.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.md_entry_type.labels[value] or "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num = {}

-- Size: Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size = 4

-- Display: Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs = {}

-- Size: No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs.size = 1

-- Display: No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs.display = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.no_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.no_legs, range, value, display)

  return offset + length, value
end

-- No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries = {}

-- Size: No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries.size = 1

-- Display: No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades = {}

-- Size: No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades.size = 4

-- Display: No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades.display = function(value)
  return "No Of Trades: "..value
end

-- Dissect: No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.no_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.no_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.no_of_trades, range, value, display)

  return offset + length, value
end

-- Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px = {}

-- Size: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.size = 8

-- Display: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.offer_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.offer_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.offer_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1 = {}

-- Size: Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1.size = 1

-- Display: Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1.display = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3 = {}

-- Size: Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3.size = 3

-- Display: Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3.display = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4 = {}

-- Size: Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4.size = 4

-- Display: Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4.display = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5 = {}

-- Size: Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5.size = 5

-- Display: Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5.display = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6 = {}

-- Size: Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6.size = 6

-- Display: Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6.display = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7 = {}

-- Size: Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7.size = 7

-- Display: Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7.display = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id = {}

-- Size: Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id.size = 1

-- Display: Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price = {}

-- Size: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.size = 8

-- Display: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Prev Close Price: No Value"
  end

  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.prev_close_price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.prev_close_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty = {}

-- Size: Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size = 8

-- Display: Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty.display = function(value)
  return "Prev Display Qty: "..value
end

-- Dissect: Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_display_qty, range, value, display)

  return offset + length, value
end

-- Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price = {}

-- Size: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.size = 8

-- Display: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.display = function(value)
  return "Prev Price: "..value
end

-- Translate: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.prev_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.prev_price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.prev_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_price, range, value, display)

  return offset + length, value
end

-- Price
bse_bseindia_eobi_fbe_v1_4.price = {}

-- Size: Price
bse_bseindia_eobi_fbe_v1_4.price.size = 8

-- Display: Price
bse_bseindia_eobi_fbe_v1_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bse_bseindia_eobi_fbe_v1_4.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
bse_bseindia_eobi_fbe_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex = {}

-- Size: Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex.size = 1

-- Display: Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex.labels = {
  [5] = "Product Complex: Futures Spread (5)",
}

bse_bseindia_eobi_fbe_v1_4.product_complex.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.product_complex.labels[value] or "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty = {}

-- Size: Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.size = 8

-- Display: Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Resting Hidden Qty: No Value"
  end

  return "Resting Hidden Qty: "..value
end

-- Dissect: Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.resting_hidden_qty, range, value, display)

  return offset + length, value
end

-- Security Id
bse_bseindia_eobi_fbe_v1_4.security_id = {}

-- Size: Security Id
bse_bseindia_eobi_fbe_v1_4.security_id.size = 8

-- Display: Security Id
bse_bseindia_eobi_fbe_v1_4.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
bse_bseindia_eobi_fbe_v1_4.security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
bse_bseindia_eobi_fbe_v1_4.security_status = {}

-- Size: Security Status
bse_bseindia_eobi_fbe_v1_4.security_status.size = 1

-- Display: Security Status
bse_bseindia_eobi_fbe_v1_4.security_status.labels = {
  [1] = "Security Status: Active (1)",
  [2] = "Security Status: Inactive (2)",
  [4] = "Security Status: Expired (4)",
  [9] = "Security Status: Suspended (9)",
}

bse_bseindia_eobi_fbe_v1_4.security_status.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.security_status.labels[value] or "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
bse_bseindia_eobi_fbe_v1_4.security_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type = {}

-- Size: Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type.size = 4

-- Display: Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eobi_fbe_v1_4.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status = {}

-- Size: Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status.size = 1

-- Display: Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status.labels = {
  [200] = "Security Trading Status: Closed (200)",
  [201] = "Security Trading Status: Restricted (201)",
  [202] = "Security Trading Status: Book (202)",
  [203] = "Security Trading Status: Continuous (203)",
  [204] = "Security Trading Status: Opening Auction (204)",
  [205] = "Security Trading Status: Opening Auction Freeze (205)",
  [206] = "Security Trading Status: Intraday Auction (206)",
  [207] = "Security Trading Status: Intraday Auction Freeze (207)",
  [208] = "Security Trading Status: Circuit Breaker Auction (208)",
  [209] = "Security Trading Status: Circuit Breaker Auction Freeze (209)",
  [210] = "Security Trading Status: Closing Auction (210)",
  [211] = "Security Trading Status: Closing Auction Freeze (211)",
}

bse_bseindia_eobi_fbe_v1_4.security_trading_status.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.security_trading_status.labels[value] or "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Side
bse_bseindia_eobi_fbe_v1_4.side = {}

-- Size: Side
bse_bseindia_eobi_fbe_v1_4.side.size = 1

-- Display: Side
bse_bseindia_eobi_fbe_v1_4.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

bse_bseindia_eobi_fbe_v1_4.side.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
bse_bseindia_eobi_fbe_v1_4.side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.side, range, value, display)

  return offset + length, value
end

-- Template Id
bse_bseindia_eobi_fbe_v1_4.template_id = {}

-- Size: Template Id
bse_bseindia_eobi_fbe_v1_4.template_id.size = 2

-- Display: Template Id
bse_bseindia_eobi_fbe_v1_4.template_id.labels = {
  [13001] = "Template Id: Heartbeat Message (13001)",
  [13600] = "Template Id: Product Summary Message (13600)",
  [13602] = "Template Id: Snapshot Order Message (13602)",
  [13601] = "Template Id: Instrument Summary Message (13601)",
  [13500] = "Template Id: Auction Best Bid Offer Message (13500)",
  [13501] = "Template Id: Auction Clearing Price Message (13501)",
  [13504] = "Template Id: Top Of Book Message (13504)",
  [13100] = "Template Id: Order Add Message (13100)",
  [13101] = "Template Id: Order Modify Message (13101)",
  [13106] = "Template Id: Order Modify Same Priority Message (13106)",
  [13102] = "Template Id: Order Delete Message (13102)",
  [13103] = "Template Id: Order Mass Delete Message (13103)",
  [13105] = "Template Id: Partial Order Execution Message (13105)",
  [13104] = "Template Id: Full Order Execution Message (13104)",
  [13200] = "Template Id: Trade Reversal Message (13200)",
  [13202] = "Template Id: Execution Summary Message (13202)",
  [13203] = "Template Id: Instrument Info Message (13203)",
  [13204] = "Template Id: Lpp Range Message (13204)",
  [13300] = "Template Id: Product State Change Message (13300)",
  [13301] = "Template Id: Instrument State Change Message (13301)",
  [13400] = "Template Id: Add Complex Instrument Message (13400)",
  [13002] = "Template Id: Packet Header (13002)",
}

bse_bseindia_eobi_fbe_v1_4.template_id.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
bse_bseindia_eobi_fbe_v1_4.template_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.template_id, range, value, display)

  return offset + length, value
end

-- Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders = {}

-- Size: Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders.size = 4

-- Display: Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders.display = function(value)
  return "Tot No Orders: "..value
end

-- Dissect: Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.tot_no_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.tot_no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.tot_no_orders, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status = {}

-- Size: Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size = 1

-- Display: Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status.labels = {
  [1] = "Trad Ses Status: Halted (1)",
  [2] = "Trad Ses Status: Open (2)",
  [3] = "Trad Ses Status: Closed (3)",
}

bse_bseindia_eobi_fbe_v1_4.trad_ses_status.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.trad_ses_status.labels[value] or "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition = {}

-- Size: Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition.size = 1

-- Display: Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition.display = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end
  if value == 255 then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trade_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume = {}

-- Size: Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume.size = 8

-- Display: Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id = {}

-- Size: Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id.size = 1

-- Display: Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id.labels = {
  [1] = "Trading Session Id: Day (1)",
  [3] = "Trading Session Id: Morning (3)",
  [5] = "Trading Session Id: Evening (5)",
  [7] = "Trading Session Id: Holiday (7)",
}

bse_bseindia_eobi_fbe_v1_4.trading_session_id.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.labels = {
  [1] = "Trading Session Sub Id: Pre Trading (1)",
  [3] = "Trading Session Sub Id: Trading (3)",
  [4] = "Trading Session Sub Id: Closing (4)",
  [5] = "Trading Session Sub Id: Post Trading (5)",
  [6] = "Trading Session Sub Id: Post Closing (6)",
  [7] = "Trading Session Sub Id: Quiescent (7)",
}

bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.display = function(value)
  return bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.labels[value] or "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time = {}

-- Size: Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time.size = 8

-- Dissect: Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.transact_time
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id = {}

-- Size: Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id.size = 4

-- Display: Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time = {}

-- Size: Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size = 8

-- Dissect: Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_execution_time
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_execution_time_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Trd Reg Ts Execution Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority = {}

-- Size: Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.size = 8

-- Dissect: Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_prev_time_priority
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_prev_time_priority_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in = {}

-- Size: Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size = 8

-- Dissect: Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_in
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_in_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Trd Reg Ts Time In: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority = {}

-- Size: Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size = 8

-- Dissect: Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_priority
  if bse_bseindia_eobi_fbe_v1_4.absolute_time_base == 1 then field = omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_priority_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit = {}

-- Size: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.size = 8

-- Display: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Upper Ckt Limit: No Value"
  end

  return "Upper Ckt Limit: "..value
end

-- Translate: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_ckt_limit, range, value, display)

  return offset + length, value
end

-- Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit = {}

-- Size: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.size = 8

-- Display: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.display = function(value)
  return "Upper Exec Limit: "..value
end

-- Translate: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_exec_limit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bse BseIndia Eobi Fbe 1.4
-----------------------------------------------------------------------

-- Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp = {}

-- Size: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.size =
  bse_bseindia_eobi_fbe_v1_4.leg_security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.leg_side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_3.size

-- Display: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, instrmt_leg_grp_index)
  local index = offset

  -- Implicit Instrmt Leg Grp Index
  if instrmt_leg_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp_index, instrmt_leg_grp_index)
    iteration:set_generated()
  end

  -- Entries beyond No Legs are filler the record carries
  if instrmt_leg_grp_index ~= nil and instrmt_leg_grp_index > no_legs then
    local unused = parent:add("Unused: beyond No Legs")
    unused:set_generated()
  end

  -- Leg Security Id: signed int
  index, leg_security_id = bse_bseindia_eobi_fbe_v1_4.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: signed int
  index, leg_ratio_qty = bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: unsigned int
  index, leg_side = bse_bseindia_eobi_fbe_v1_4.leg_side.dissect(buffer, index, packet, parent)

  -- Pad 3: Fixed String
  index, pad_3 = bse_bseindia_eobi_fbe_v1_4.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, instrmt_leg_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.fields(buffer, offset, packet, parent, instrmt_leg_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.fields(buffer, offset, packet, parent, instrmt_leg_grp_index)
  end
end

-- Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message = {}

-- Size: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_sub_type.size + 
  bse_bseindia_eobi_fbe_v1_4.product_complex.size + 
  bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.no_legs.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_1.size + 
  5 * bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.size

-- Display: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Sub Type: signed int
  index, security_sub_type = bse_bseindia_eobi_fbe_v1_4.security_sub_type.dissect(buffer, index, packet, parent)

  -- Product Complex: unsigned int
  index, product_complex = bse_bseindia_eobi_fbe_v1_4.product_complex.dissect(buffer, index, packet, parent)

  -- Implied Market Indicator: unsigned int
  index, implied_market_indicator = bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.dissect(buffer, index, packet, parent)

  -- No Legs: Counter
  index, no_legs = bse_bseindia_eobi_fbe_v1_4.no_legs.dissect(buffer, index, packet, parent)

  -- Pad 1: Fixed String
  index, pad_1 = bse_bseindia_eobi_fbe_v1_4.pad_1.dissect(buffer, index, packet, parent)

  -- Array Of: Instrmt Leg Grp
  for instrmt_leg_grp_index = 1, 5 do
    index, instrmt_leg_grp = bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.dissect(buffer, index, packet, parent, instrmt_leg_grp_index)
  end

  return index
end

-- Dissect: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.add_complex_instrument_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message = {}

-- Size: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.security_status.size + 
  bse_bseindia_eobi_fbe_v1_4.security_trading_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_5.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Security Status: unsigned int
  index, security_status = bse_bseindia_eobi_fbe_v1_4.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: unsigned int
  index, security_trading_status = bse_bseindia_eobi_fbe_v1_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Pad 5: Fixed String
  index, pad_5 = bse_bseindia_eobi_fbe_v1_4.pad_5.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_state_change_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message = {}

-- Size: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.size =
  bse_bseindia_eobi_fbe_v1_4.trading_session_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Id: unsigned int
  index, trading_session_id = bse_bseindia_eobi_fbe_v1_4.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: unsigned int
  index, trading_session_sub_id = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: unsigned int
  index, trad_ses_status = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.product_state_change_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.product_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.product_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.product_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message = {}

-- Size: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.size + 
  bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.size

-- Display: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Upper Exec Limit: PriceType
  index, upper_exec_limit = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.dissect(buffer, index, packet, parent)

  -- Lower Exec Limit: PriceType
  index, lower_exec_limit = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.lpp_range_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.lpp_range_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.lpp_range_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.lpp_range_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message = {}

-- Size: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.close_price.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_close_price.size + 
  bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.size + 
  bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.size

-- Display: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Close Price: PriceType
  index, close_price = bse_bseindia_eobi_fbe_v1_4.close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Price: PriceType
  index, prev_close_price = bse_bseindia_eobi_fbe_v1_4.prev_close_price.dissect(buffer, index, packet, parent)

  -- Upper Ckt Limit: PriceType
  index, upper_ckt_limit = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.dissect(buffer, index, packet, parent)

  -- Lower Ckt Limit: PriceType
  index, lower_ckt_limit = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_info_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrument_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrument_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrument_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message = {}

-- Size: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.size + 
  bse_bseindia_eobi_fbe_v1_4.exec_id.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.aggressor_side.size + 
  bse_bseindia_eobi_fbe_v1_4.trade_condition.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_6.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size + 
  bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.size

-- Display: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Aggressor Timestamp: UTCTimestamp
  index, aggressor_timestamp = bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: UTCTimestamp
  index, exec_id = bse_bseindia_eobi_fbe_v1_4.exec_id.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Aggressor Side: unsigned int
  index, aggressor_side = bse_bseindia_eobi_fbe_v1_4.aggressor_side.dissect(buffer, index, packet, parent)

  -- Trade Condition: unsigned int
  index, trade_condition = bse_bseindia_eobi_fbe_v1_4.trade_condition.dissect(buffer, index, packet, parent)

  -- Pad 6: Fixed String
  index, pad_6 = bse_bseindia_eobi_fbe_v1_4.pad_6.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  -- Resting Hidden Qty: signed int
  index, resting_hidden_qty = bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.execution_summary_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.execution_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.execution_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.execution_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp = {}

-- Size: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.size =
  bse_bseindia_eobi_fbe_v1_4.md_entry_px.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_size.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_type.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size

-- Display: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.fields = function(buffer, offset, packet, parent, md_trade_entry_grp_index)
  local index = offset

  -- Implicit Md Trade Entry Grp Index
  if md_trade_entry_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp_index, md_trade_entry_grp_index)
    iteration:set_generated()
  end

  -- Entries beyond No Md Entries are filler the record carries
  if md_trade_entry_grp_index ~= nil and md_trade_entry_grp_index > no_md_entries then
    local unused = parent:add("Unused: beyond No Md Entries")
    unused:set_generated()
  end

  -- Md Entry Px: PriceType
  index, md_entry_px = bse_bseindia_eobi_fbe_v1_4.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: signed int
  index, md_entry_size = bse_bseindia_eobi_fbe_v1_4.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Type: unsigned int
  index, md_entry_type = bse_bseindia_eobi_fbe_v1_4.md_entry_type.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.dissect = function(buffer, offset, packet, parent, md_trade_entry_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.fields(buffer, offset, packet, parent, md_trade_entry_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.fields(buffer, offset, packet, parent, md_trade_entry_grp_index)
  end
end

-- Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message = {}

-- Size: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_match_id.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size + 
  bse_bseindia_eobi_fbe_v1_4.no_md_entries.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  15 * bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.size

-- Display: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Trd Match Id: unsigned int
  index, trd_match_id = bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: UTCTimestamp
  index, trd_reg_ts_execution_time = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.dissect(buffer, index, packet, parent)

  -- No Md Entries: Counter
  index, no_md_entries = bse_bseindia_eobi_fbe_v1_4.no_md_entries.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Array Of: Md Trade Entry Grp
  for md_trade_entry_grp_index = 1, 15 do
    index, md_trade_entry_grp = bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.dissect(buffer, index, packet, parent, md_trade_entry_grp_index)
  end

  return index
end

-- Dissect: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_reversal_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message = {}

-- Size: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.size =
  bse_bseindia_eobi_fbe_v1_4.side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  bse_bseindia_eobi_fbe_v1_4.price.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_match_id.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size

-- Display: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: unsigned int
  index, side = bse_bseindia_eobi_fbe_v1_4.side.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = bse_bseindia_eobi_fbe_v1_4.price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: UTCTimestamp
  index, trd_reg_ts_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: unsigned int
  index, trd_match_id = bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.full_order_execution_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message = {}

-- Size: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.size =
  bse_bseindia_eobi_fbe_v1_4.side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  bse_bseindia_eobi_fbe_v1_4.price.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_match_id.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size

-- Display: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: unsigned int
  index, side = bse_bseindia_eobi_fbe_v1_4.side.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = bse_bseindia_eobi_fbe_v1_4.price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: UTCTimestamp
  index, trd_reg_ts_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: unsigned int
  index, trd_match_id = bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.partial_order_execution_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message = {}

-- Size: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_mass_delete_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Details
bse_bseindia_eobi_fbe_v1_4.order_details = {}

-- Size: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.display_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  bse_bseindia_eobi_fbe_v1_4.price.size

-- Display: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Priority: UTCTimestamp
  index, trd_reg_ts_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Display Qty: signed int
  index, display_qty = bse_bseindia_eobi_fbe_v1_4.display_qty.dissect(buffer, index, packet, parent)

  -- Side: unsigned int
  index, side = bse_bseindia_eobi_fbe_v1_4.side.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = bse_bseindia_eobi_fbe_v1_4.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_details, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_details.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_details.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_details.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message = {}

-- Size: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_delete_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message = {}

-- Size: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Prev Display Qty: signed int
  index, prev_display_qty = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_same_priority_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message = {}

-- Size: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_price.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Prev Time Priority: UTCTimestamp
  index, trd_reg_ts_prev_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.dissect(buffer, index, packet, parent)

  -- Prev Price: PriceType
  index, prev_price = bse_bseindia_eobi_fbe_v1_4.prev_price.dissect(buffer, index, packet, parent)

  -- Prev Display Qty: signed int
  index, prev_display_qty = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message = {}

-- Size: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_add_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message = {}

-- Size: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.size =
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.bid_px.size + 
  bse_bseindia_eobi_fbe_v1_4.offer_px.size

-- Display: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: PriceType
  index, bid_px = bse_bseindia_eobi_fbe_v1_4.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: PriceType
  index, offer_px = bse_bseindia_eobi_fbe_v1_4.offer_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.top_of_book_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message = {}

-- Size: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.size =
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size

-- Display: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_clearing_price_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message = {}

-- Size: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.size =
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.bid_px.size + 
  bse_bseindia_eobi_fbe_v1_4.offer_px.size

-- Display: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: PriceType
  index, bid_px = bse_bseindia_eobi_fbe_v1_4.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: PriceType
  index, offer_px = bse_bseindia_eobi_fbe_v1_4.offer_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_best_bid_offer_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp = {}

-- Size: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.size =
  bse_bseindia_eobi_fbe_v1_4.md_entry_px.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_size.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_type.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size

-- Display: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.fields = function(buffer, offset, packet, parent, md_instrument_entry_grp_index)
  local index = offset

  -- Implicit Md Instrument Entry Grp Index
  if md_instrument_entry_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp_index, md_instrument_entry_grp_index)
    iteration:set_generated()
  end

  -- Entries beyond No Md Entries are filler the record carries
  if md_instrument_entry_grp_index ~= nil and md_instrument_entry_grp_index > no_md_entries then
    local unused = parent:add("Unused: beyond No Md Entries")
    unused:set_generated()
  end

  -- Md Entry Px: PriceType
  index, md_entry_px = bse_bseindia_eobi_fbe_v1_4.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: signed int
  index, md_entry_size = bse_bseindia_eobi_fbe_v1_4.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Type: unsigned int
  index, md_entry_type = bse_bseindia_eobi_fbe_v1_4.md_entry_type.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.dissect = function(buffer, offset, packet, parent, md_instrument_entry_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.fields(buffer, offset, packet, parent, md_instrument_entry_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.fields(buffer, offset, packet, parent, md_instrument_entry_grp_index)
  end
end

-- Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message = {}

-- Size: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.last_update_time.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size + 
  bse_bseindia_eobi_fbe_v1_4.tot_no_orders.size + 
  bse_bseindia_eobi_fbe_v1_4.security_status.size + 
  bse_bseindia_eobi_fbe_v1_4.security_trading_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.no_md_entries.size + 
  bse_bseindia_eobi_fbe_v1_4.trade_volume.size + 
  bse_bseindia_eobi_fbe_v1_4.no_of_trades.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  15 * bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.size

-- Display: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Last Update Time: UTCTimestamp
  index, last_update_time = bse_bseindia_eobi_fbe_v1_4.last_update_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: UTCTimestamp
  index, trd_reg_ts_execution_time = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.dissect(buffer, index, packet, parent)

  -- Tot No Orders: unsigned int
  index, tot_no_orders = bse_bseindia_eobi_fbe_v1_4.tot_no_orders.dissect(buffer, index, packet, parent)

  -- Security Status: unsigned int
  index, security_status = bse_bseindia_eobi_fbe_v1_4.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: unsigned int
  index, security_trading_status = bse_bseindia_eobi_fbe_v1_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- No Md Entries: Counter
  index, no_md_entries = bse_bseindia_eobi_fbe_v1_4.no_md_entries.dissect(buffer, index, packet, parent)

  -- Trade Volume: signed int
  index, trade_volume = bse_bseindia_eobi_fbe_v1_4.trade_volume.dissect(buffer, index, packet, parent)

  -- No Of Trades: unsigned int
  index, no_of_trades = bse_bseindia_eobi_fbe_v1_4.no_of_trades.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Array Of: Md Instrument Entry Grp
  for md_instrument_entry_grp_index = 1, 15 do
    index, md_instrument_entry_grp = bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.dissect(buffer, index, packet, parent, md_instrument_entry_grp_index)
  end

  return index
end

-- Dissect: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_summary_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message = {}

-- Size: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.size =
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.snapshot_order_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message = {}

-- Size: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.size =
  bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size + 
  bse_bseindia_eobi_fbe_v1_4.trading_session_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size

-- Display: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: unsigned int
  index, last_msg_seq_num_processed = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Trading Session Id: unsigned int
  index, trading_session_id = bse_bseindia_eobi_fbe_v1_4.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: unsigned int
  index, trading_session_sub_id = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: unsigned int
  index, trad_ses_status = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.product_summary_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.product_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.product_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.product_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message = {}

-- Size: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.size =
  bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size

-- Display: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: unsigned int
  index, last_msg_seq_num_processed = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.heartbeat_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bse_bseindia_eobi_fbe_v1_4.payload = {}

-- Dispatch: Payload
bse_bseindia_eobi_fbe_v1_4.payload.dispatch = {
  [13001] = bse_bseindia_eobi_fbe_v1_4.heartbeat_message.dissect,
  [13600] = bse_bseindia_eobi_fbe_v1_4.product_summary_message.dissect,
  [13602] = bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.dissect,
  [13601] = bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.dissect,
  [13500] = bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.dissect,
  [13501] = bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.dissect,
  [13504] = bse_bseindia_eobi_fbe_v1_4.top_of_book_message.dissect,
  [13100] = bse_bseindia_eobi_fbe_v1_4.order_add_message.dissect,
  [13101] = bse_bseindia_eobi_fbe_v1_4.order_modify_message.dissect,
  [13106] = bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.dissect,
  [13102] = bse_bseindia_eobi_fbe_v1_4.order_delete_message.dissect,
  [13103] = bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.dissect,
  [13105] = bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.dissect,
  [13104] = bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.dissect,
  [13200] = bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.dissect,
  [13202] = bse_bseindia_eobi_fbe_v1_4.execution_summary_message.dissect,
  [13203] = bse_bseindia_eobi_fbe_v1_4.instrument_info_message.dissect,
  [13204] = bse_bseindia_eobi_fbe_v1_4.lpp_range_message.dissect,
  [13300] = bse_bseindia_eobi_fbe_v1_4.product_state_change_message.dissect,
  [13301] = bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.dissect,
  [13400] = bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.dissect,
}

-- Dissect: Payload
bse_bseindia_eobi_fbe_v1_4.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = bse_bseindia_eobi_fbe_v1_4.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bse_bseindia_eobi_fbe_v1_4.message_header = {}

-- Size: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.size =
  bse_bseindia_eobi_fbe_v1_4.body_len.size + 
  bse_bseindia_eobi_fbe_v1_4.template_id.size + 
  bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size

-- Display: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: unsigned int
  index, body_len = bse_bseindia_eobi_fbe_v1_4.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: unsigned int
  index, template_id = bse_bseindia_eobi_fbe_v1_4.template_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: unsigned int
  index, msg_seq_num = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.message_header, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bse_bseindia_eobi_fbe_v1_4.message = {}

-- Display: Message
bse_bseindia_eobi_fbe_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bse_bseindia_eobi_fbe_v1_4.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = bse_bseindia_eobi_fbe_v1_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = bse_bseindia_eobi_fbe_v1_4.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
bse_bseindia_eobi_fbe_v1_4.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.message, buffer(offset, 0))
    local current = bse_bseindia_eobi_fbe_v1_4.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bse_bseindia_eobi_fbe_v1_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eobi_fbe_v1_4.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header = {}

-- Size: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.size =
  bse_bseindia_eobi_fbe_v1_4.body_len.size + 
  bse_bseindia_eobi_fbe_v1_4.template_id.size + 
  bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size

-- Display: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: unsigned int
  index, body_len = bse_bseindia_eobi_fbe_v1_4.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: unsigned int
  index, template_id = bse_bseindia_eobi_fbe_v1_4.template_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: unsigned int
  index, msg_seq_num = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.eobi_header, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.eobi_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.eobi_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.eobi_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header = {}

-- Size: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.size =
  bse_bseindia_eobi_fbe_v1_4.eobi_header.size + 
  bse_bseindia_eobi_fbe_v1_4.appl_seq_num.size + 
  bse_bseindia_eobi_fbe_v1_4.market_segment_id.size + 
  bse_bseindia_eobi_fbe_v1_4.partition_id.size + 
  bse_bseindia_eobi_fbe_v1_4.completion_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_5.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Eobi Header: Struct of 3 fields
  index, eobi_header = bse_bseindia_eobi_fbe_v1_4.eobi_header.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: unsigned int
  index, appl_seq_num = bse_bseindia_eobi_fbe_v1_4.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Market Segment Id: signed int
  index, market_segment_id = bse_bseindia_eobi_fbe_v1_4.market_segment_id.dissect(buffer, index, packet, parent)

  -- Partition Id: unsigned int
  index, partition_id = bse_bseindia_eobi_fbe_v1_4.partition_id.dissect(buffer, index, packet, parent)

  -- Completion Indicator: unsigned int
  index, completion_indicator = bse_bseindia_eobi_fbe_v1_4.completion_indicator.dissect(buffer, index, packet, parent)

  -- Appl Seq Reset Indicator: unsigned int
  index, appl_seq_reset_indicator = bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.dissect(buffer, index, packet, parent)

  -- Pad 5: Fixed String
  index, pad_5 = bse_bseindia_eobi_fbe_v1_4.pad_5.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.packet_header, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bse_bseindia_eobi_fbe_v1_4.packet = {}

-- Verify required size of Udp packet
bse_bseindia_eobi_fbe_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= bse_bseindia_eobi_fbe_v1_4.packet_header.size + bse_bseindia_eobi_fbe_v1_4.message_header.size
end

-- Dissect Packet
bse_bseindia_eobi_fbe_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = bse_bseindia_eobi_fbe_v1_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Body Len
    local body_len = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = bse_bseindia_eobi_fbe_v1_4.message.dissect(buffer, index, packet, parent, body_len)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bse_bseindia_eobi_fbe_v1_4.init()
end

-- Dissector for Bse BseIndia Eobi Fbe 1.4
function omi_bse_bseindia_eobi_fbe_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bse_bseindia_eobi_fbe_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_bse_bseindia_eobi_fbe_v1_4, buffer(), omi_bse_bseindia_eobi_fbe_v1_4.description, "("..buffer:len().." Bytes)")
  return bse_bseindia_eobi_fbe_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bse_bseindia_eobi_fbe_v1_4.packet.fingerprint = function(buffer)
  if buffer:len() < 36 then
    return false
  end

  local template_id = buffer(34, 2):le_uint()

  -- Heartbeat Message
  if template_id == 13001 then
    return true
  end

  -- Product Summary Message
  if template_id == 13600 then
    return true
  end

  -- Snapshot Order Message
  if template_id == 13602 then
    return true
  end

  -- Instrument Summary Message
  if template_id == 13601 then
    return true
  end

  -- Auction Best Bid Offer Message
  if template_id == 13500 then
    return true
  end

  -- Auction Clearing Price Message
  if template_id == 13501 then
    return true
  end

  -- Top Of Book Message
  if template_id == 13504 then
    return true
  end

  -- Order Add Message
  if template_id == 13100 then
    return true
  end

  -- Order Modify Message
  if template_id == 13101 then
    return true
  end

  -- Order Modify Same Priority Message
  if template_id == 13106 then
    return true
  end

  -- Order Delete Message
  if template_id == 13102 then
    return true
  end

  -- Order Mass Delete Message
  if template_id == 13103 then
    return true
  end

  -- Partial Order Execution Message
  if template_id == 13105 then
    return true
  end

  -- Full Order Execution Message
  if template_id == 13104 then
    return true
  end

  -- Trade Reversal Message
  if template_id == 13200 then
    return true
  end

  -- Execution Summary Message
  if template_id == 13202 then
    return true
  end

  -- Instrument Info Message
  if template_id == 13203 then
    return true
  end

  -- Lpp Range Message
  if template_id == 13204 then
    return true
  end

  -- Product State Change Message
  if template_id == 13300 then
    return true
  end

  -- Instrument State Change Message
  if template_id == 13301 then
    return true
  end

  -- Add Complex Instrument Message
  if template_id == 13400 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bse BseIndia Eobi Fbe 1.4 (Udp)
local function omi_bse_bseindia_eobi_fbe_v1_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bse_bseindia_eobi_fbe_v1_4.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bse_bseindia_eobi_fbe_v1_4.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bse_bseindia_eobi_fbe_v1_4
  omi_bse_bseindia_eobi_fbe_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bse BseIndia Eobi Fbe 1.4
omi_bse_bseindia_eobi_fbe_v1_4:register_heuristic("udp", omi_bse_bseindia_eobi_fbe_v1_4_udp_heuristic)

-- Register Bse BseIndia Eobi Fbe 1.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bse_bseindia_eobi_fbe_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: BSE Limited
--   Version: 1.4
--   Date: Monday, July 14, 2025
--   Specification: EOBI_Data_Manual_V1.4.pdf
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
