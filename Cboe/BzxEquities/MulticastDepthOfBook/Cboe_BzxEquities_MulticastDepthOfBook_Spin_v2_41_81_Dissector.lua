-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Protocol
local omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81 = Proto("Omi.Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.41.81", "Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81")

-- Protocol table
local cboe_bzxequities_multicastdepthofbook_spin_v2_41_81 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Fields
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_flags = ProtoField.new("Add Flags", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.addflags", ftypes.STRING, nil, nil, nil, "Add Flags bit field used in Add Order messages. Bit 0 is reserved and set to 1. Bit 3 (AON) is Options only.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.aon = ProtoField.new("Aon", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.aon", ftypes.UINT8, {[0]="Order Is A Firm Quote", [1]="Order Is Aon All Or None"}, base.DEC, 0x08, "Options only. 0 = Order is a firm quote, 1 = Order is AON (All or None).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.auctiononlyprice", ftypes.UINT64, nil, nil, nil, "Price at which the auction book would match using only Eligible Auction Orders.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_type = ProtoField.new("Auction Type", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.auctiontype", ftypes.STRING, nil, nil, nil, "O = Opening Auction, C = Closing Auction, H = Halt Auction, I = IPO Auction, M = Cboe Market Close.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.buyshares", ftypes.UINT32, nil, nil, nil, "Number of shares on buy side at the Reference Price. Shares matched for Cboe Market Close.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.canceledquantitylong", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts canceled.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.canceledquantityshort", ftypes.UINT16, nil, nil, nil, "Number of shares/contracts canceled.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.customerindicator", ftypes.STRING, nil, nil, nil, "Space filled on all equities markets. R = Retail Priority order (EDGX Equities only).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.display = ProtoField.new("Display", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.display", ftypes.UINT8, {[0]="Order Is Not Aggregated In The Cboe Sip Quote", [1]="Order Is Aggregated In The Cboe Sip Quote"}, base.DEC, 0x01, "Bit 0 - Display. 0 = Order is not aggregated in the Cboe SIP quote, 1 = Order is aggregated in the Cboe SIP quote.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.epochtime", ftypes.UINT32, nil, nil, nil, "C1 Options Only and effective 11/02/26 for BZX/EDGX Equities. Number of whole seconds since the Epoch (midnight January 1, 1970 UTC).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts executed.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.execution_id = ProtoField.new("Execution Id", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.executionid", ftypes.UINT64, nil, nil, nil, "Cboe generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break message.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.filler = ProtoField.new("Filler", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.filler", ftypes.STRING, nil, nil, nil, "(space filled)")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.indicativeprice", ftypes.UINT64, nil, nil, nil, "Price at which the auction book and the continuous book would match.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.instrumentcount", ftypes.UINT32, nil, nil, nil, "Number of Symbol Mapping and Complex Instrument Definition messages (if applicable) which will be contained in this spin.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.instrumentdefinitionresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject. All non-A status codes should be interpreted as a reject. A = Accepted, O = Out of range, S = Spin already in process.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.length = ProtoField.new("Length", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject. A = Login accepted, N = Not authorized (invalid username/password), B = Session in use, S = Invalid session.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.maintainpriority", ftypes.UINT8, {[0]="Reset Priority", [1]="Maintain Priority"}, base.DEC, 0x02, "Bit 1 - Maintain Priority. 0 = Reset Priority, 1 = Maintain Priority.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_count = ProtoField.new("Message Count", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_length = ProtoField.new("Message Length", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_type = ProtoField.new("Message Type", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.midnightreference", ftypes.UINT32, nil, nil, nil, "Midnight Eastern Time reference time for subsequent Time messages, expressed as number of whole seconds since the Epoch (Midnight January 1, 1970 UTC).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.modifyflags", ftypes.STRING, nil, nil, nil, "Modify Flags bit field used in Modify Order messages.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_count = ProtoField.new("Order Count", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.ordercount", ftypes.UINT32, nil, nil, nil, "Number of Add Order messages which will be contained in this spin.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_id = ProtoField.new("Order Id", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.participant_id = ProtoField.new("Participant Id", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.participantid", ftypes.STRING, nil, nil, nil, "Optionally specified. If specified, the MPID (equities) of firm attributed to this quote. Alternatively \"RTAL\" for retail specified orders (equities). Space filled otherwise.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.password = ProtoField.new("Password", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.password", ftypes.STRING, nil, nil, nil, "Password supplied by Cboe.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.price_long = ProtoField.new("Price Long", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.pricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.price_short = ProtoField.new("Price Short", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.priceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.quantitylong", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts being added to the book (may be less than the number entered).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.quantityshort", ftypes.UINT16, nil, nil, nil, "Number of shares/contracts being added to the book (may be less than the number entered).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reference_price = ProtoField.new("Reference Price", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.referenceprice", ftypes.UINT64, nil, nil, nil, "BBO Collared auction price. Shares matched for Cboe Market Close.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.regshoaction", ftypes.STRING, nil, nil, nil, "0 = No price test in effect, 1 = Reg SHO price test restriction in effect.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts remaining after the execution.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.reserved1", ftypes.STRING, nil, nil, nil, "Reserved.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.retailpriceimprovement", ftypes.STRING, nil, nil, nil, "B = Buy Side RPI, S = Sell Side RPI, A = Buy and Sell RPI, N = No RPI.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.secondreserved1", ftypes.STRING, nil, nil, nil, "Reserved.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.sellshares", ftypes.UINT32, nil, nil, nil, "Number of shares on sell side at the Reference Price. Shares matched for Cboe Market Close.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.sequence = ProtoField.new("Sequence", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.sequence", ftypes.UINT32, nil, nil, nil, "Spin is available which is current through this sequence number.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.sessionsubid", ftypes.STRING, nil, nil, nil, "SessionSubId supplied by Cboe.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.shares = ProtoField.new("Shares", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.shares", ftypes.UINT32, nil, nil, nil, "Cumulative number of shares/contracts executed during the auction or CMC matching.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order, S = Sell Order.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.spinresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject. All non-A status codes should be interpreted as a reject. A = Accepted, O = Out of range, S = Spin already in process.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.stocksymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol right padded with spaces.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.symbollong", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.symbolshort", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time = ProtoField.new("Time", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Eastern Time calendar day, derived by converting the current Eastern wall clock time (HH:MM:SS) to seconds. On Daylight Saving Time transition days, Time reflects wall clock seconds and does not adjust for the UTC offset change. On a DST spring-forward day, the maximum value will be 82,799 (23 hours). On a DST fall-back day, values between 3,600 and 7,199 will appear twice. Recipients requiring unambiguous absolute timestamps should use Epoch Time (where available) or Midnight Reference in the Time Reference message.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time_offset = ProtoField.new("Time Offset", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_date = ProtoField.new("Trade Date", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradedate", ftypes.UINT32, nil, nil, nil, "Current Trade Date")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trading_status = ProtoField.new("Trading Status", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradingstatus", ftypes.STRING, nil, nil, nil, "A = Accepting Orders for Queuing (Equities only), H = Halted, Q = Quote-Only, S = Exchange Specific Suspension, T = Trading.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unit = ProtoField.new("Unit", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unused_3 = ProtoField.new("Unused 3", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.unused3", ftypes.UINT8, nil, base.DEC, 0x07, "Bits 0-2 Reserved (Bit 0 set to 1).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unused_4 = ProtoField.new("Unused 4", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.unused4", ftypes.UINT8, nil, base.DEC, 0xF0, "Bits 4-7 Reserved.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unused_6 = ProtoField.new("Unused 6", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.unused6", ftypes.UINT8, nil, base.DEC, 0xFC, "Bits 2-7 Reserved.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.username = ProtoField.new("Username", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.username", ftypes.STRING, nil, nil, nil, "Username supplied by Cboe.")

-- Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Framing
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message = ProtoField.new("Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.message", ftypes.STRING)
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_header = ProtoField.new("Message Header", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.messageheader", ftypes.STRING)
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.packet = ProtoField.new("Packet", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.packet", ftypes.STRING, nil, nil, nil, "Pitch Tcp Packet")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.packet_header = ProtoField.new("Packet Header", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.packetheader", ftypes.STRING)

-- Cboe BzxEquities MulticastDepthOfBook 2.41.81 Application Messages
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.addorderexpandedmessage", ftypes.STRING, nil, nil, nil, "The expanded version of the Add Order message has been made available to accommodate larger symbol sizes possible through the ISRA plan.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.addorderlongmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe book. It includes a day-specific Order Id assigned by Cboe to the order.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.addordershortmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe book. It includes a day-specific Order Id assigned by Cboe to the order.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "BYX Equities, BZX Equities, and Options Only. Auction Summary messages are used to disseminate the results of an auction of a Cboe listed security on BZX, the results of an Opening or Re-Opening of any options series on C1, and for Periodic Auctions on BYX. An Auction Summary message will be sent for Cboe Market Close (CMC) once the official closing price for each security is available.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.auctionupdatemessage", ftypes.STRING, nil, nil, nil, "BYX and BZX Equities Only. Auction Update messages are used to disseminate Cboe price and size information during auctions for Cboe listed securities and for Cboe Market Close (CMC) crosses on BZX, and for Periodic Auctions on BYX. This is the BZX Equities layout (Table 31).")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.deleteordermessage", ftypes.STRING, nil, nil, nil, "The Delete Order message is sent whenever a booked order is cancelled or leaves the order book. The Order Id refers to the Order Id of the original Add Order message. An order that is deleted from the book may return to the book later under certain circumstances. Therefore, a Delete Order message does not indicate that a given Order Id will not be sent again on a subsequent Add Order message.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.endofsessionmessage", ftypes.STRING, nil, nil, nil, "The End of Session message is sent for each unit when the unit shuts down. No more sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.instrumentdefinitionfinishedmessage", ftypes.BYTES, nil, nil, nil, "The Instrument Definition Finished message is sent to indicate that all Symbol Mapping and Complex Instrument Definition messages for this unit have been sent. An Instrument Definition Finished message is only sent if an Instrument Definition Request was not rejected.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.instrumentdefinitionrequestmessage", ftypes.STRING, nil, nil, nil, "The Instrument Definition Request message is used by a user's process to request transmission of this unit's Symbol Mappings and Complex Instrument Definitions. Included for consistency with the Options Spin Server; not typically used on Equities feeds.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.instrumentdefinitionresponsemessage", ftypes.STRING, nil, nil, nil, "The Instrument Definition Response message is sent in response to a user's Instrument Definition Request message indicating whether a spin will be sent.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.login_message = ProtoField.new("Login Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.loginmessage", ftypes.STRING, nil, nil, nil, "The Login message is the first message sent to the Spin Server by a user's process after the connection to the Spin Server is established. Failure to login before sending any other message type will result in the connection being dropped by the Spin Server. The format of the Login message for the Spin Server is identical to that of the GRP.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.loginresponsemessage", ftypes.STRING, nil, nil, nil, "The Login Response message is sent by the Spin Server to a user's process in response to a Login message. The status field is used to reflect an accepted login or the reason the session was not accepted. If login fails, the connection will be dropped after the Login Response message is sent.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message. Note that Modify Order messages that appear to be \"No Ops\" (i.e. they do not appear to modify any relevant fields) will still lose priority.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.orderexecutedatpricesizemessage", ftypes.STRING, nil, nil, nil, "Order Executed at Price/Size messages are sent when a visible order on the Cboe book is executed in whole or in part at a different price than the limit price on the original Add Order message or the limit order price in the latest Modify Order message referencing the Order Id. If the Remaining Quantity field contains a 0 the order should be completely removed from the book.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed messages are sent when a visible order on the Cboe book is executed in whole or in part. The execution price equals the limit order price found in the original Add Order message or the limit order price in the latest Modify Order message referencing the Order Id.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a visible order on the Cboe book is partially reduced.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a visible order on the Cboe book is partially reduced.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.retailpriceimprovementmessage", ftypes.STRING, nil, nil, nil, "BYX and (effective 04/10/26) EDGX Only. The Retail Price Improvement message is a Retail Liquidity Indicator (RLI) that includes symbol and side, but not price and size. An RLI will be disseminated when there is a Retail Price Improving (RPI) order present for a symbol on the Exchange order book OR to indicate a RPI order is no longer available. Cboe will disseminate a Retail Price Improvement message when the resting RPI order is priced better than the NBBO.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.spinfinishedmessage", ftypes.STRING, nil, nil, nil, "The Spin Finished message is sent to indicate that all messages for the spin requested have been sent. A Spin Finished message is only sent if a Spin Request was not rejected. Upon receipt of a Spin Finished message, any buffered multicast messages should be applied to the member's copy of the book to make it current.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.spinimageavailablemessage", ftypes.STRING, nil, nil, nil, "The Spin Image Available message is sent once per second and indicates through what sequence number a spin is available.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.spinrequestmessage", ftypes.STRING, nil, nil, nil, "The Spin Request message is used by a user's process to request transmission of a spin of the unit's order book.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.spinresponsemessage", ftypes.STRING, nil, nil, nil, "The Spin Response message is sent in response to a user's Spin Request message indicating whether a spin will be sent.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time_message = ProtoField.new("Time Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is immediately generated and sent when there is a PITCH event for a given clock second. If there is no PITCH event for a given clock second, then no Time message is sent for that second. The Time field is the number of seconds relative to midnight Eastern Time. All subsequent time offset fields for the same unit will use the new Time message value as the base until another Time message is received for the same unit. On C1 Options only and effective 11/02/26 for BZX/EDGX Equities, the Time message also includes the Epoch Time field.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.timereferencemessage", ftypes.STRING, nil, nil, nil, "The Time Reference message is used to provide a midnight reference point for recipients of the feed. It is sent whenever the system starts up and when the system crosses a midnight boundary. All subsequent Time messages for the same unit will use the last Midnight Reference until another Time Reference message is received for that unit. The Time Reference message includes the Trade Date, so most other sequenced messages will not include that information.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradebreakmessage", ftypes.STRING, nil, nil, nil, "The Trade Break message is sent whenever an execution on Cboe is broken. Trade breaks are rare and only affect applications that rely upon Cboe execution-based data. Applications that simply build a Cboe book can ignore Trade Break messages.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradeexpandedmessage", ftypes.STRING, nil, nil, nil, "The expanded version of the Trade message has been made available to accommodate larger symbol sizes possible through the ISRA plan.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradelongmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of non-displayed orders on the Cboe book and routed executions to other trading centers. Trade messages are necessary to calculate Cboe execution-based data. Trade messages do not alter the book and can be ignored if messages are being used solely to build a book.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradeshortmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of non-displayed orders on the Cboe book and routed executions to other trading centers.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a security. A Trading Status message will be sent whenever a security's trading status changes. Trading Status of S is to be implied at system startup for all symbols. Sequenced Trading Status messages are sent upon system start up for all active securities with Trading Status = 'S' (suspended). Trading Status messages will continue to be published upon symbol state changes, such as at the beginning of order acceptance.")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.unitclearmessage", ftypes.STRING, nil, nil, nil, "The Unit Clear message instructs feed recipients to clear all orders for the Cboe book in the unit specified in the Sequenced Unit Header message. For Equities only, this message will be sent at startup each day. It would also be distributed in certain recovery events such as a data center fail-over.")

-- Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Generated Fields
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_index = ProtoField.new("Message Index", "cboe.bzxequities.multicastdepthofbook.spin.v2.41.81.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Show Options
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_headers then
    show.headers = omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_headers
  end
  if show.structs ~= omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_structs then
    show.structs = omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_indexes then
    show.indexes = omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.prefs.show_indexes
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


-----------------------------------------------------------------------
-- Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 Fields
-----------------------------------------------------------------------

-- Auction Only Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price = {}

-- Size: Auction Only Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Dissect: Auction Only Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type = {}

-- Size: Auction Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.size = 1

-- Display: Auction Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.labels = {
  ["O"] = "Auction Type: Opening Auction (O)",
  ["C"] = "Auction Type: Closing Auction (C)",
  ["H"] = "Auction Type: Halt Auction (H)",
  ["I"] = "Auction Type: Ipo Auction (I)",
  ["M"] = "Auction Type: Cboe Market Close (M)",
  ["P"] = "Auction Type: Periodic Auction Byx Only (P)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares = {}

-- Size: Buy Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.size = 4

-- Display: Buy Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator = {}

-- Size: Customer Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.labels = {
  ["R"] = "Customer Indicator: Retail Priority Order Edgx Equities Only (R)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.labels[value] or "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time = {}

-- Size: Epoch Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.size = 4

-- Display: Epoch Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity = {}

-- Size: Executed Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id = {}

-- Size: Execution Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size = 8

-- Display: Execution Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Filler
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler = {}

-- Size: Filler
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.size = 2

-- Display: Filler
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.filler, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price = {}

-- Size: Indicative Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.size = 8

-- Display: Indicative Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count = {}

-- Size: Instrument Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.size = 4

-- Display: Instrument Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.labels = {
  ["A"] = "Instrument Definition Response Status: Accepted (A)",
  ["O"] = "Instrument Definition Response Status: Out Of Range Sequence Must Be 0 (O)",
  ["S"] = "Instrument Definition Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.labels[value] or "Instrument Definition Response Status: Unknown("..value..")"
end

-- Dissect: Instrument Definition Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length = {}

-- Size: Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.size = 2

-- Display: Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status = {}

-- Size: Login Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.size = 1

-- Display: Login Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.labels = {
  ["A"] = "Login Response Status: Login Accepted (A)",
  ["N"] = "Login Response Status: Not Authorized Invalid Username Password (N)",
  ["B"] = "Login Response Status: Session In Use (B)",
  ["S"] = "Login Response Status: Invalid Session (S)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.labels[value] or "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count = {}

-- Size: Message Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.size = 1

-- Display: Message Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length = {}

-- Size: Message Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.size = 1

-- Display: Message Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type = {}

-- Size: Message Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.size = 1

-- Display: Message Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.labels = {
  [0x01] = "Message Type: Login Message (0x01)",
  [0x02] = "Message Type: Login Response Message (0x02)",
  [0x80] = "Message Type: Spin Image Available Message (0x80)",
  [0x81] = "Message Type: Spin Request Message (0x81)",
  [0x82] = "Message Type: Spin Response Message (0x82)",
  [0x83] = "Message Type: Spin Finished Message (0x83)",
  [0x84] = "Message Type: Instrument Definition Request Message (0x84)",
  [0x85] = "Message Type: Instrument Definition Response Message (0x85)",
  [0x86] = "Message Type: Instrument Definition Finished Message (0x86)",
  [0xB1] = "Message Type: Time Reference Message (0xB1)",
  [0x20] = "Message Type: Time Message (0x20)",
  [0x97] = "Message Type: Unit Clear Message (0x97)",
  [0x21] = "Message Type: Add Order Long Message (0x21)",
  [0x22] = "Message Type: Add Order Short Message (0x22)",
  [0x2F] = "Message Type: Add Order Expanded Message (0x2F)",
  [0x23] = "Message Type: Order Executed Message (0x23)",
  [0x24] = "Message Type: Order Executed At Price Size Message (0x24)",
  [0x25] = "Message Type: Reduce Size Long Message (0x25)",
  [0x26] = "Message Type: Reduce Size Short Message (0x26)",
  [0x27] = "Message Type: Modify Order Long Message (0x27)",
  [0x28] = "Message Type: Modify Order Short Message (0x28)",
  [0x29] = "Message Type: Delete Order Message (0x29)",
  [0x2A] = "Message Type: Trade Long Message (0x2A)",
  [0x2B] = "Message Type: Trade Short Message (0x2B)",
  [0x30] = "Message Type: Trade Expanded Message (0x30)",
  [0x2C] = "Message Type: Trade Break Message (0x2C)",
  [0x2D] = "Message Type: End Of Session Message (0x2D)",
  [0x31] = "Message Type: Trading Status Message (0x31)",
  [0x95] = "Message Type: Auction Update Message (0x95)",
  [0x96] = "Message Type: Auction Summary Message (0x96)",
  [0x98] = "Message Type: Retail Price Improvement Message (0x98)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.labels[value] or "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference = {}

-- Size: Midnight Reference
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count = {}

-- Size: Order Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.size = 4

-- Display: Order Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id = {}

-- Size: Order Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size = 8

-- Display: Order Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id = {}

-- Size: Participant Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.size = 4

-- Display: Participant Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password = {}

-- Size: Password
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.size = 10

-- Display: Password
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long = {}

-- Size: Price Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size = 8

-- Display: Price Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.translate(raw)
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short = {}

-- Size: Price Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.size = 2

-- Display: Price Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.translate(raw)
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long = {}

-- Size: Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size = 4

-- Display: Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short = {}

-- Size: Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.size = 2

-- Display: Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price = {}

-- Size: Reference Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.size = 8

-- Display: Reference Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test In Effect (0)",
  ["1"] = "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1 = {}

-- Size: Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.size = 1

-- Display: Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.labels = {
  ["B"] = "Retail Price Improvement: Buy Side Rpi (B)",
  ["S"] = "Retail Price Improvement: Sell Side Rpi (S)",
  ["A"] = "Retail Price Improvement: Buy And Sell Rpi (A)",
  ["N"] = "Retail Price Improvement: No Rpi (N)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.labels[value] or "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares = {}

-- Size: Sell Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.size = 4

-- Display: Sell Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence = {}

-- Size: Sequence
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size = 4

-- Display: Sequence
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id = {}

-- Size: Session Sub Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares = {}

-- Size: Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.size = 4

-- Display: Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.shares, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator = {}

-- Size: Side Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size = 1

-- Display: Side Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status = {}

-- Size: Spin Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.labels = {
  ["A"] = "Spin Response Status: Accepted (A)",
  ["O"] = "Spin Response Status: Out Of Range Sequence Requested Is Greater Than Sequence Available By The Next Spin (O)",
  ["S"] = "Spin Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.labels[value] or "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol = {}

-- Size: Stock Symbol
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long = {}

-- Size: Symbol Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.size = 8

-- Display: Symbol Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short = {}

-- Size: Symbol Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.size = 6

-- Display: Symbol Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time = {}

-- Size: Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.size = 4

-- Display: Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset = {}

-- Size: Time Offset
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size = 4

-- Display: Time Offset
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date = {}

-- Size: Trade Date
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.size = 4

-- Display: Trade Date
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status = {}

-- Size: Trading Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.size = 1

-- Display: Trading Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.labels = {
  ["A"] = "Trading Status: Accepting Orders For Queuing Equities Only (A)",
  ["H"] = "Trading Status: Halted (H)",
  ["Q"] = "Trading Status: Quote Only (Q)",
  ["S"] = "Trading Status: Exchange Specific Suspension (S)",
  ["T"] = "Trading Status: Trading (T)",
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.display = function(value)
  return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit = {}

-- Size: Unit
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.size = 1

-- Display: Unit
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username = {}

-- Size: Username
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.size = 4

-- Display: Username
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81
-----------------------------------------------------------------------

-- Retail Price Improvement Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.size

-- Display: Retail Price Improvement Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alpha
  index, retail_price_improvement = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.size

-- Display: Auction Summary Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  -- Shares: Binary
  index, shares = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message = {}

-- Size: Auction Update Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.size

-- Display: Auction Update Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: Binary
  index, buy_shares = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Binary
  index, sell_shares = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary
  index, indicative_price = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary
  index, auction_only_price = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_only_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message = {}

-- Size: Trading Status Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.size

-- Display: Trading Status Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Alpha
  index, second_reserved_1 = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message = {}

-- Size: End Of Session Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size

-- Display: End Of Session Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message = {}

-- Size: Trade Break Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size

-- Display: Trade Break Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size

-- Display: Trade Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message = {}

-- Size: Trade Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size

-- Display: Trade Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message = {}

-- Size: Trade Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size

-- Display: Trade Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message = {}

-- Size: Delete Order Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size

-- Display: Delete Order Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags = {}

-- Size: Modify Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.size = 1

-- Display: Modify Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.display = function(range, value, packet, parent)
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
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.display, range, value)

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.maintain_priority, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unused_6, range, value)
end

-- Dissect: Modify Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.modify_flags, range, display)

  if show.structs then
    cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.size

-- Display: Modify Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.size

-- Display: Modify Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size

-- Display: Order Executed At Price Size Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message = {}

-- Size: Order Executed Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.size

-- Display: Order Executed Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags = {}

-- Size: Add Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.size = 1

-- Display: Add Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unused_3, range, value)

  -- Aon: 1 Bit Enum with 2 values
  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.aon, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unused_4, range, value)
end

-- Dissect: Add Flags
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_flags, range, display)

  if show.structs then
    cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.size

-- Display: Add Order Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Printable ASCII
  index, symbol_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.size

-- Display: Add Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_short.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.size

-- Display: Add Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Printable ASCII
  index, symbol_short = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size

-- Display: Unit Clear Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message = {}

-- Size: Time Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.size

-- Display: Time Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message = {}

-- Size: Time Reference Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.size

-- Display: Time Reference Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_finished_message = {}

-- Display: Instrument Definition Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_finished_message.display = function(packet, parent, length)
  return "Instrument Definition Finished Message"
end


-- Dissect: Instrument Definition Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_finished_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_finished_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Instrument Definition Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size

-- Display: Instrument Definition Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size

-- Display: Spin Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message = {}

-- Size: Spin Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.size

-- Display: Spin Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message = {}

-- Size: Spin Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size

-- Display: Spin Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size

-- Display: Spin Image Available Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message = {}

-- Size: Login Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.size

-- Display: Login Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.login_response_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message = {}

-- Size: Login Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.size

-- Display: Login Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.login_message, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.payload = {}

-- Dissect: Payload
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.payload.dispatch = {
  [0x01] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_message.dissect,
  [0x02] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.login_response_message.dissect,
  [0x80] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_image_available_message.dissect,
  [0x81] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_request_message.dissect,
  [0x82] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_response_message.dissect,
  [0x83] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.spin_finished_message.dissect,
  [0x84] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_request_message.dissect,
  [0x85] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_response_message.dissect,
  [0x86] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.instrument_definition_finished_message.dissect,
  [0xB1] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_reference_message.dissect,
  [0x20] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.time_message.dissect,
  [0x97] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit_clear_message.dissect,
  [0x21] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_long_message.dissect,
  [0x22] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_short_message.dissect,
  [0x2F] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.add_order_expanded_message.dissect,
  [0x23] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_message.dissect,
  [0x24] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.order_executed_at_price_size_message.dissect,
  [0x25] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_long_message.dissect,
  [0x26] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.reduce_size_short_message.dissect,
  [0x27] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_long_message.dissect,
  [0x28] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.modify_order_short_message.dissect,
  [0x29] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.delete_order_message.dissect,
  [0x2A] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_long_message.dissect,
  [0x2B] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_short_message.dissect,
  [0x30] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_expanded_message.dissect,
  [0x2C] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trade_break_message.dissect,
  [0x2D] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.end_of_session_message.dissect,
  [0x31] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.trading_status_message.dissect,
  [0x95] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_update_message.dissect,
  [0x96] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.auction_summary_message.dissect,
  [0x98] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.retail_price_improvement_message.dissect,
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header = {}

-- Size: Message Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.size

-- Display: Message Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, message_type = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_header, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message = {}

-- Read runtime size of: Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 31 branches
  index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.message, buffer(offset, 0))
    local current = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.heartbeat = {}

-- Display: Heartbeat
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.messages = {}

-- Dissect: Messages
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.messages.dispatch = {
  [0] = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.heartbeat.dissect,
}

cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header = {}

-- Size: Packet Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.size =
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.size + 
  cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.size

-- Display: Packet Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.fields.packet_header, buffer(offset, 0))
    local index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet = {}

-- Verify required size of Tcp packet
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.size
end

-- Dissect Packet
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.init()
end

-- Dissector for Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81
function omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81, buffer(index, size), omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.description, "("..size.." Bytes)")
    cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_count = buffer(2, 1):le_uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 10 then
    return false
  end

  local message_type = buffer(9, 1):le_uint()

  -- Login Message
  if message_type == 0x01 then
    return true
  end

  -- Login Response Message
  if message_type == 0x02 then
    return true
  end

  -- Spin Image Available Message
  if message_type == 0x80 then
    return true
  end

  -- Spin Request Message
  if message_type == 0x81 then
    return true
  end

  -- Spin Response Message
  if message_type == 0x82 then
    return true
  end

  -- Spin Finished Message
  if message_type == 0x83 then
    return true
  end

  -- Instrument Definition Request Message
  if message_type == 0x84 then
    return true
  end

  -- Instrument Definition Response Message
  if message_type == 0x85 then
    return true
  end

  -- Instrument Definition Finished Message
  if message_type == 0x86 then
    return true
  end

  -- Time Reference Message
  if message_type == 0xB1 then
    return true
  end

  -- Time Message
  if message_type == 0x20 then
    return true
  end

  -- Unit Clear Message
  if message_type == 0x97 then
    return true
  end

  -- Add Order Long Message
  if message_type == 0x21 then
    return true
  end

  -- Add Order Short Message
  if message_type == 0x22 then
    return true
  end

  -- Add Order Expanded Message
  if message_type == 0x2F then
    return true
  end

  -- Order Executed Message
  if message_type == 0x23 then
    return true
  end

  -- Order Executed At Price Size Message
  if message_type == 0x24 then
    return true
  end

  -- Reduce Size Long Message
  if message_type == 0x25 then
    return true
  end

  -- Reduce Size Short Message
  if message_type == 0x26 then
    return true
  end

  -- Modify Order Long Message
  if message_type == 0x27 then
    return true
  end

  -- Modify Order Short Message
  if message_type == 0x28 then
    return true
  end

  -- Delete Order Message
  if message_type == 0x29 then
    return true
  end

  -- Trade Long Message
  if message_type == 0x2A then
    return true
  end

  -- Trade Short Message
  if message_type == 0x2B then
    return true
  end

  -- Trade Expanded Message
  if message_type == 0x30 then
    return true
  end

  -- Trade Break Message
  if message_type == 0x2C then
    return true
  end

  -- End Of Session Message
  if message_type == 0x2D then
    return true
  end

  -- Trading Status Message
  if message_type == 0x31 then
    return true
  end

  -- Auction Update Message
  if message_type == 0x95 then
    return true
  end

  -- Auction Summary Message
  if message_type == 0x96 then
    return true
  end

  -- Retail Price Improvement Message
  if message_type == 0x98 then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 (Tcp)
local function omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81
  omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81
omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81:register_heuristic("tcp", omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81_tcp_heuristic)

-- Register Cboe BzxEquities MulticastDepthOfBook Spin 2.41.81 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bzxequities_multicastdepthofbook_spin_v2_41_81)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.41.81
--   Date: Wednesday, September 23, 2026
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
