-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Protocol
local omi_otcmarkets_linknqb_depthofbook_link_v1_18 = Proto("Omi.OtcMarkets.LinkNqb.DepthOfBook.Link.v1.18", "OtcMarkets LinkNqb DepthOfBook Link 1.18")

-- Protocol table
local otcmarkets_linknqb_depthofbook_link_v1_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Fields
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.asset_class = ProtoField.new("Asset Class", "otcmarkets.linknqb.depthofbook.link.v1.18.assetclass", ftypes.UINT8, nil, nil, nil, "Asset class.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.caveat_flag = ProtoField.new("Caveat Flag", "otcmarkets.linknqb.depthofbook.link.v1.18.caveatflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Indicates whether a Caveat Emptor warning has been applied to the security.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.closing_cross_auction = ProtoField.new("Closing Cross Auction", "otcmarkets.linknqb.depthofbook.link.v1.18.closingcrossauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Indicates if security participates in the OTC Link Closing Cross Auction.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_closing_price = ProtoField.new("Current Inside Closing Price", "otcmarkets.linknqb.depthofbook.link.v1.18.currentinsideclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price without Day / extended Day orders, bounded by the inside. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_imbalance_quantity = ProtoField.new("Current Inside Imbalance Quantity", "otcmarkets.linknqb.depthofbook.link.v1.18.currentinsideimbalancequantity", ftypes.UINT32, nil, nil, nil, "Number of marketable OC and IO shares that would be left unmatched at the Current Inside Closing Price.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_imbalance_side = ProtoField.new("Current Inside Imbalance Side", "otcmarkets.linknqb.depthofbook.link.v1.18.currentinsideimbalanceside", ftypes.STRING, nil, nil, nil, "Buy or sell side of the Current Inside Imbalance Quantity.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_paired_shares = ProtoField.new("Current Inside Paired Shares", "otcmarkets.linknqb.depthofbook.link.v1.18.currentinsidepairedshares", ftypes.UINT32, nil, nil, nil, "Number of OC and IO shares that would be matched at the Current Inside Closing Price.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.deprecated = ProtoField.new("Deprecated", "otcmarkets.linknqb.depthofbook.link.v1.18.deprecated", ftypes.UINT32, nil, nil, nil, "Deprecated.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.executed_quantity = ProtoField.new("Executed Quantity", "otcmarkets.linknqb.depthofbook.link.v1.18.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares executed.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.execution_id = ProtoField.new("Execution Id", "otcmarkets.linknqb.depthofbook.link.v1.18.executionid", ftypes.UINT64, nil, nil, nil, "System generated day-unique execution identifier of this execution.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.firm_id = ProtoField.new("Firm Id", "otcmarkets.linknqb.depthofbook.link.v1.18.firmid", ftypes.STRING, nil, nil, nil, "Firm's MPID.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.full_closing_price = ProtoField.new("Full Closing Price", "otcmarkets.linknqb.depthofbook.link.v1.18.fullclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.heartbeat = ProtoField.new("Heartbeat", "otcmarkets.linknqb.depthofbook.link.v1.18.heartbeat", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "A Heartbeat is sent if no business level message has been published for more than a second")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.last_update_milli = ProtoField.new("Last Update Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.lastupdatemilli", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Milliseconds from UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.last_update_milli_utc = ProtoField.new("Last Update Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.lastupdatemilli.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Milliseconds from UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_count = ProtoField.new("Message Count", "otcmarkets.linknqb.depthofbook.link.v1.18.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages in packet")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_size = ProtoField.new("Message Size", "otcmarkets.linknqb.depthofbook.link.v1.18.messagesize", ftypes.UINT16, nil, nil, nil, "Size of message in bytes")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_type = ProtoField.new("Message Type", "otcmarkets.linknqb.depthofbook.link.v1.18.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.moc_shares_unmatched = ProtoField.new("Moc Shares Unmatched", "otcmarkets.linknqb.depthofbook.link.v1.18.mocsharesunmatched", ftypes.STRING, nil, nil, nil, "Indicates if any MOC shares are left unmatched.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "otcmarkets.linknqb.depthofbook.link.v1.18.nextsequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence Number that you should use when recovery starts. If set to 0, sequence number will not reset. Only set when Recovery Type is 'S'.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.ocio_only_closing_price = ProtoField.new("Ocio Only Closing Price", "otcmarkets.linknqb.depthofbook.link.v1.18.ocioonlyclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price without Day / extended Day orders. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_flags = ProtoField.new("Order Flags", "otcmarkets.linknqb.depthofbook.link.v1.18.orderflags", ftypes.UINT16, nil, nil, nil, "TBD.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_id = ProtoField.new("Order Id", "otcmarkets.linknqb.depthofbook.link.v1.18.orderid", ftypes.STRING, nil, nil, nil, "Day-specific identifier assigned to this order. The Order ID consists of 14 alphanumeric characters; use the first 12 characters and convert them from base-36 to a 64-bit integer.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_flag = ProtoField.new("Packet Flag", "otcmarkets.linknqb.depthofbook.link.v1.18.packetflag", ftypes.STRING, nil, nil, nil, "Packet Flags")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_milli = ProtoField.new("Packet Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.packetmilli", ftypes.UINT32, nil, nil, nil, "Milliseconds since local time midnight (EST/EDT)")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_size = ProtoField.new("Packet Size", "otcmarkets.linknqb.depthofbook.link.v1.18.packetsize", ftypes.UINT16, nil, nil, nil, "Size of packet in bytes")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.piggyback_flag = ProtoField.new("Piggyback Flag", "otcmarkets.linknqb.depthofbook.link.v1.18.piggybackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "15c2-11 \"PiggyBack\" exempt security status flag.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.price = ProtoField.new("Price", "otcmarkets.linknqb.depthofbook.link.v1.18.price", ftypes.DOUBLE, nil, nil, nil, "The limit order price. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.qib_only_144_a = ProtoField.new("Qib Only 144 A", "otcmarkets.linknqb.depthofbook.link.v1.18.qibonly144a", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "\"144A QIB Only\" in the PDF. Indicates that the security may only be purchased or sold by Qualified Institutional Buyers (QIBs) or agents acting on behalf of QIBs.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.quantity = ProtoField.new("Quantity", "otcmarkets.linknqb.depthofbook.link.v1.18.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.recovery_start_time = ProtoField.new("Recovery Start Time", "otcmarkets.linknqb.depthofbook.link.v1.18.recoverystarttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expected time recovery spin will start.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.recovery_start_time_utc = ProtoField.new("Recovery Start Time", "otcmarkets.linknqb.depthofbook.link.v1.18.recoverystarttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expected time recovery spin will start.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.recovery_type = ProtoField.new("Recovery Type", "otcmarkets.linknqb.depthofbook.link.v1.18.recoverytype", ftypes.UINT8, nil, nil, nil, "Recovery event type.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "otcmarkets.linknqb.depthofbook.link.v1.18.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of shares remaining after the execution. Will be zero if fully filled.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.replay = ProtoField.new("Replay", "otcmarkets.linknqb.depthofbook.link.v1.18.replay", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Packet contains replay messages")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reporting_status = ProtoField.new("Reporting Status", "otcmarkets.linknqb.depthofbook.link.v1.18.reportingstatus", ftypes.STRING, nil, nil, nil, "Reporting status of the security.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reserved_11 = ProtoField.new("Reserved 11", "otcmarkets.linknqb.depthofbook.link.v1.18.reserved11", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Reserved.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reserved_4 = ProtoField.new("Reserved 4", "otcmarkets.linknqb.depthofbook.link.v1.18.reserved4", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reserved_binary_long_8 = ProtoField.new("Reserved Binary Long 8", "otcmarkets.linknqb.depthofbook.link.v1.18.reservedbinarylong8", ftypes.UINT64, nil, nil, nil, "Reserved.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_action = ProtoField.new("Security Action", "otcmarkets.linknqb.depthofbook.link.v1.18.securityaction", ftypes.UINT8, nil, nil, nil, "Security action.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_flags = ProtoField.new("Security Flags", "otcmarkets.linknqb.depthofbook.link.v1.18.securityflags", ftypes.STRING, nil, nil, nil, "This flag notes security level attributes and is only included in the Security Message.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_id = ProtoField.new("Security Id", "otcmarkets.linknqb.depthofbook.link.v1.18.securityid", ftypes.UINT32, nil, nil, nil, "Unique security ID issued by OTC Markets.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_status = ProtoField.new("Security Status", "otcmarkets.linknqb.depthofbook.link.v1.18.securitystatus", ftypes.STRING, nil, nil, nil, "Security trading status.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.seq_num = ProtoField.new("Seq Num", "otcmarkets.linknqb.depthofbook.link.v1.18.seqnum", ftypes.UINT32, nil, nil, nil, "Channel specific Sequence number of packet")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otcmarkets.linknqb.depthofbook.link.v1.18.seqnumreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "indicates that the channel sequence numbers are being reset to 1")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.session_time = ProtoField.new("Session Time", "otcmarkets.linknqb.depthofbook.link.v1.18.sessiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "\"Time\" in the PDF, renamed to disambiguate from the 4-byte midnight \"Time\" field used in other messages. Milliseconds since UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.session_time_utc = ProtoField.new("Session Time", "otcmarkets.linknqb.depthofbook.link.v1.18.sessiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "\"Time\" in the PDF, renamed to disambiguate from the 4-byte midnight \"Time\" field used in other messages. Milliseconds since UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.side_indicator = ProtoField.new("Side Indicator", "otcmarkets.linknqb.depthofbook.link.v1.18.sideindicator", ftypes.STRING, nil, nil, nil, "\"B\" = Buy Order, \"S\" = Sell Order.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.spinendtimemilli", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_end_time_milli_utc = ProtoField.new("Spin End Time Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.spinendtimemilli.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otcmarkets.linknqb.depthofbook.link.v1.18.spinlastseqnum", ftypes.UINT32, nil, nil, nil, "Ignore, not used.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otcmarkets.linknqb.depthofbook.link.v1.18.spinmsgct", ftypes.UINT32, nil, nil, nil, "Total messages in spin.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.spinstarttimemilli", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_start_time_milli_utc = ProtoField.new("Spin Start Time Milli", "otcmarkets.linknqb.depthofbook.link.v1.18.spinstarttimemilli.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_type = ProtoField.new("Spin Type", "otcmarkets.linknqb.depthofbook.link.v1.18.spintype", ftypes.UINT8, nil, nil, nil, "Spin type.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.symbol = ProtoField.new("Symbol", "otcmarkets.linknqb.depthofbook.link.v1.18.symbol", ftypes.STRING, nil, nil, nil, "Ticker symbol.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.test = ProtoField.new("Test", "otcmarkets.linknqb.depthofbook.link.v1.18.test", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Packet contains test messages")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.tier = ProtoField.new("Tier", "otcmarkets.linknqb.depthofbook.link.v1.18.tier", ftypes.UINT8, nil, nil, nil, "The market tier assigned by OTC Markets Group.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.time = ProtoField.new("Time", "otcmarkets.linknqb.depthofbook.link.v1.18.time", ftypes.UINT32, nil, nil, nil, "Milliseconds from midnight.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.trading_session = ProtoField.new("Trading Session", "otcmarkets.linknqb.depthofbook.link.v1.18.tradingsession", ftypes.UINT8, nil, nil, nil, "Trading session indicator.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.unsolicited = ProtoField.new("Unsolicited", "otcmarkets.linknqb.depthofbook.link.v1.18.unsolicited", ftypes.STRING, nil, nil, nil, "\"Y\" = Unsolicited, \"N\" = Not Unsolicited.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.unsolicited_only_flag = ProtoField.new("Unsolicited Only Flag", "otcmarkets.linknqb.depthofbook.link.v1.18.unsolicitedonlyflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Indicates if a security may only be quoted Unsolicited.")

-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Framing
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message = ProtoField.new("Message", "otcmarkets.linknqb.depthofbook.link.v1.18.message", ftypes.STRING)
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_header = ProtoField.new("Message Header", "otcmarkets.linknqb.depthofbook.link.v1.18.messageheader", ftypes.STRING, nil, nil, nil, "Otc Udp Message Header")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet = ProtoField.new("Packet", "otcmarkets.linknqb.depthofbook.link.v1.18.packet", ftypes.STRING, nil, nil, nil, "Otc Udp Packet")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_header = ProtoField.new("Packet Header", "otcmarkets.linknqb.depthofbook.link.v1.18.packetheader", ftypes.STRING)

-- OtcMarkets LinkNqb DepthOfBook 1.18 Application Messages
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otcmarkets.linknqb.depthofbook.link.v1.18.endofspinmessage", ftypes.STRING, nil, nil, nil, "This message appears on all channels and indicates the end of a spin message cycle. It will be followed by a Spin Response Message, with status 'E'.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.imbalance_message = ProtoField.new("Imbalance Message", "otcmarkets.linknqb.depthofbook.link.v1.18.imbalancemessage", ftypes.STRING, nil, nil, nil, "This message appears on all channels.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_add_message = ProtoField.new("Order Add Message", "otcmarkets.linknqb.depthofbook.link.v1.18.orderaddmessage", ftypes.STRING, nil, nil, nil, "This message appears on the DOB channel. Indicates a new order added to the book.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_delete_message = ProtoField.new("Order Delete Message", "otcmarkets.linknqb.depthofbook.link.v1.18.orderdeletemessage", ftypes.STRING, nil, nil, nil, "This message appears on the DOB channel. Indicates an existing order has been deleted from the book.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_execution_message = ProtoField.new("Order Execution Message", "otcmarkets.linknqb.depthofbook.link.v1.18.orderexecutionmessage", ftypes.STRING, nil, nil, nil, "This message appears on the DOB channel. An Order Executed message will be published when all or some of the displayed quantity of a previously published order executes at the published price.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_execution_with_price_message = ProtoField.new("Order Execution With Price Message", "otcmarkets.linknqb.depthofbook.link.v1.18.orderexecutionwithpricemessage", ftypes.STRING, nil, nil, nil, "This message appears on the DOB channel. An Order Executed with Price message will be published when all or some of the displayed quantity of a previously published order executes at a price different than the published price.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_update_message = ProtoField.new("Order Update Message", "otcmarkets.linknqb.depthofbook.link.v1.18.orderupdatemessage", ftypes.STRING, nil, nil, nil, "This message appears on the DOB channel. Indicates an existing order has been modified.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_message = ProtoField.new("Security Message", "otcmarkets.linknqb.depthofbook.link.v1.18.securitymessage", ftypes.STRING, nil, nil, nil, "The Security Message appears on all channels and provides basic security attribute information for all OTC equity securities.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otcmarkets.linknqb.depthofbook.link.v1.18.startofspinmessage", ftypes.STRING, nil, nil, nil, "After a Spin Response Message, with status 'S', this message appears on all channels and indicates the beginning of a spin message cycle.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.system_recovery_event_message = ProtoField.new("System Recovery Event Message", "otcmarkets.linknqb.depthofbook.link.v1.18.systemrecoveryeventmessage", ftypes.STRING, nil, nil, nil, "In case of a catastrophic issue at the exchange, the system sends a System Recovery Event. The first event (type 'S') instructs clients to prepare and reset caches; clients must clean all cached state. A second event (type 'B') indicates recovery begins, after which the system performs a spin for all symbols and open orders.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.trade_message = ProtoField.new("Trade Message", "otcmarkets.linknqb.depthofbook.link.v1.18.trademessage", ftypes.STRING, nil, nil, nil, "This message appears on the DOB channel. A Trade message will be published when non-displayed quantity of a previously published reserve order executes or when an order executes that is less than Min Quote Size and does not currently have an active Order Add message.")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.trading_session_message = ProtoField.new("Trading Session Message", "otcmarkets.linknqb.depthofbook.link.v1.18.tradingsessionmessage", ftypes.STRING, nil, nil, nil, "This message appears on all channels and is sent out at the start of each NQB IDQS trading session: Order Acceptance at 6 AM, Pre-Market Open at 8 AM, Market Open at 9:30 AM, After Hours at 4 PM, Market Close at 5 PM. The message can also be sent mid-day if a technical outage caused a temporary closure of the market.")

-- OtcMarkets LinkNqb DepthOfBook 1.18 Session Messages
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.heartbeat_packet = ProtoField.new("Heartbeat Packet", "otcmarkets.linknqb.depthofbook.link.v1.18.heartbeatpacket", ftypes.BYTES, nil, nil, nil, "Otc Markets heartbeat, a packet header with no messages behind it")

-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Generated Fields
omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_index = ProtoField.new("Message Index", "otcmarkets.linknqb.depthofbook.link.v1.18.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register OtcMarkets LinkNqb DepthOfBook Link 1.18 Show Options
omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_application_messages then
    show.application_messages = omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_application_messages
  end
  if show.headers ~= omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_headers then
    show.headers = omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_headers
  end
  if show.structs ~= omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_structs then
    show.structs = omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_structs
  end
  if show.indexes ~= omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_indexes then
    show.indexes = omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.show_indexes
  end
  if otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base ~= omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.absolute_time_base then
    otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base = omi_otcmarkets_linknqb_depthofbook_link_v1_18.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- the midnight a frame's time of day is counted from, as a utc instant; none for a frame stating no instant
venue_midnight = function(packet, utc_offset_seconds)
  local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

  -- no capture date: a frame with no instant of its own reads as the epoch
  if capture_time < 86400 then
    return nil
  end

  return math.floor((capture_time + utc_offset_seconds) / 86400) * 86400
end


-----------------------------------------------------------------------
-- OtcMarkets LinkNqb DepthOfBook Link 1.18 Fields
-----------------------------------------------------------------------

-- Asset Class
otcmarkets_linknqb_depthofbook_link_v1_18.asset_class = {}

-- Size: Asset Class
otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.size = 1

-- Display: Asset Class
otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.labels = {
  [1] = "Asset Class: Equity (1)",
  [2] = "Asset Class: Fixed Income (2)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.labels[value] or "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Current Inside Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price = {}

-- Size: Current Inside Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.size = 8

-- Display: Current Inside Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.display = function(value)
  return "Current Inside Closing Price: "..value
end

-- Translate: Current Inside Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Current Inside Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.translate(raw)
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_closing_price, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity = {}

-- Size: Current Inside Imbalance Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.size = 4

-- Display: Current Inside Imbalance Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.display = function(value)
  return "Current Inside Imbalance Quantity: "..value
end

-- Dissect: Current Inside Imbalance Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Side
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side = {}

-- Size: Current Inside Imbalance Side
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.size = 1

-- Display: Current Inside Imbalance Side
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.labels = {
  ["B"] = "Current Inside Imbalance Side: Buy Side (B)",
  ["S"] = "Current Inside Imbalance Side: Sell Side (S)",
  ["N"] = "Current Inside Imbalance Side: No Imbalance (N)",
  ["O"] = "Current Inside Imbalance Side: No Marketable Orders (O)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.labels[value] or "Current Inside Imbalance Side: Unknown("..value..")"
end

-- Dissect: Current Inside Imbalance Side
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_imbalance_side, range, value, display)

  return offset + length, value
end

-- Current Inside Paired Shares
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares = {}

-- Size: Current Inside Paired Shares
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.size = 4

-- Display: Current Inside Paired Shares
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.display = function(value)
  return "Current Inside Paired Shares: "..value
end

-- Dissect: Current Inside Paired Shares
otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.current_inside_paired_shares, range, value, display)

  return offset + length, value
end

-- Deprecated
otcmarkets_linknqb_depthofbook_link_v1_18.deprecated = {}

-- Size: Deprecated
otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.size = 4

-- Display: Deprecated
otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Executed Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity = {}

-- Size: Executed Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.size = 4

-- Display: Executed Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
otcmarkets_linknqb_depthofbook_link_v1_18.execution_id = {}

-- Size: Execution Id
otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.size = 8

-- Display: Execution Id
otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Firm Id
otcmarkets_linknqb_depthofbook_link_v1_18.firm_id = {}

-- Size: Firm Id
otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.size = 4

-- Display: Firm Id
otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price = {}

-- Size: Full Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.size = 8

-- Display: Full Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.display = function(value)
  return "Full Closing Price: "..value
end

-- Translate: Full Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Full Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.translate(raw)
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.full_closing_price, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otcmarkets_linknqb_depthofbook_link_v1_18.last_update_milli = {}

-- Size: Last Update Milli
otcmarkets_linknqb_depthofbook_link_v1_18.last_update_milli.size = 8

-- Dissect: Last Update Milli
otcmarkets_linknqb_depthofbook_link_v1_18.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.last_update_milli
  if otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base == 1 then field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.last_update_milli_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Message Count
otcmarkets_linknqb_depthofbook_link_v1_18.message_count = {}

-- Size: Message Count
otcmarkets_linknqb_depthofbook_link_v1_18.message_count.size = 1

-- Display: Message Count
otcmarkets_linknqb_depthofbook_link_v1_18.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
otcmarkets_linknqb_depthofbook_link_v1_18.message_count.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Size
otcmarkets_linknqb_depthofbook_link_v1_18.message_size = {}

-- Size: Message Size
otcmarkets_linknqb_depthofbook_link_v1_18.message_size.size = 2

-- Display: Message Size
otcmarkets_linknqb_depthofbook_link_v1_18.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_linknqb_depthofbook_link_v1_18.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_linknqb_depthofbook_link_v1_18.message_type = {}

-- Size: Message Type
otcmarkets_linknqb_depthofbook_link_v1_18.message_type.size = 1

-- Display: Message Type
otcmarkets_linknqb_depthofbook_link_v1_18.message_type.labels = {
  [11] = "Message Type: Start Of Spin Message (11)",
  [12] = "Message Type: End Of Spin Message (12)",
  [20] = "Message Type: Trading Session Message (20)",
  [9] = "Message Type: Security Message (9)",
  [21] = "Message Type: Order Add Message (21)",
  [22] = "Message Type: Order Update Message (22)",
  [23] = "Message Type: Order Delete Message (23)",
  [24] = "Message Type: Order Execution Message (24)",
  [25] = "Message Type: Order Execution With Price Message (25)",
  [26] = "Message Type: Trade Message (26)",
  [28] = "Message Type: Imbalance Message (28)",
  [74] = "Message Type: System Recovery Event Message (74)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.message_type.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otcmarkets_linknqb_depthofbook_link_v1_18.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_type, range, value, display)

  return offset + length, value
end

-- Moc Shares Unmatched
otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched = {}

-- Size: Moc Shares Unmatched
otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.size = 1

-- Display: Moc Shares Unmatched
otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.labels = {
  ["B"] = "Moc Shares Unmatched: Buy Moc Not Matched (B)",
  ["S"] = "Moc Shares Unmatched: Sell Moc Not Matched (S)",
  ["O"] = "Moc Shares Unmatched: No Moc Unmatched (O)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.labels[value] or "Moc Shares Unmatched: Unknown("..value..")"
end

-- Dissect: Moc Shares Unmatched
otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.moc_shares_unmatched, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number = {}

-- Size: Next Sequence Number
otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.size = 4

-- Display: Next Sequence Number
otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Ocio Only Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price = {}

-- Size: Ocio Only Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.size = 8

-- Display: Ocio Only Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.display = function(value)
  return "Ocio Only Closing Price: "..value
end

-- Translate: Ocio Only Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ocio Only Closing Price
otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.translate(raw)
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.ocio_only_closing_price, range, value, display)

  return offset + length, value
end

-- Order Flags
otcmarkets_linknqb_depthofbook_link_v1_18.order_flags = {}

-- Size: Order Flags
otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.size = 2

-- Display: Order Flags
otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.display = function(value)
  return "Order Flags: "..value
end

-- Dissect: Order Flags
otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_flags, range, value, display)

  return offset + length, value
end

-- Order Id
otcmarkets_linknqb_depthofbook_link_v1_18.order_id = {}

-- Size: Order Id
otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size = 14

-- Display: Order Id
otcmarkets_linknqb_depthofbook_link_v1_18.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
otcmarkets_linknqb_depthofbook_link_v1_18.order_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Milli
otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli = {}

-- Size: Packet Milli
otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.size = 4

-- Display: Packet Milli
otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_linknqb_depthofbook_link_v1_18.timestamp_format == 0 then
    return "Packet Milli: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_linknqb_depthofbook_link_v1_18.timestamp_format == 2 and packet then
    local midnight = venue_midnight(packet, -otcmarkets_linknqb_depthofbook_link_v1_18.utc_offset_hours * 3600)

    if midnight then
      return "Packet Milli: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + seconds)..string.format("%03d", milliseconds)
    end
  end

  -- Time of day mode
  return "Packet Milli: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Packet Milli
otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Packet Size
otcmarkets_linknqb_depthofbook_link_v1_18.packet_size = {}

-- Size: Packet Size
otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.size = 2

-- Display: Packet Size
otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price
otcmarkets_linknqb_depthofbook_link_v1_18.price = {}

-- Size: Price
otcmarkets_linknqb_depthofbook_link_v1_18.price.size = 8

-- Display: Price
otcmarkets_linknqb_depthofbook_link_v1_18.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
otcmarkets_linknqb_depthofbook_link_v1_18.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
otcmarkets_linknqb_depthofbook_link_v1_18.price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_depthofbook_link_v1_18.price.translate(raw)
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.quantity = {}

-- Size: Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.quantity.size = 4

-- Display: Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.quantity, range, value, display)

  return offset + length, value
end

-- Recovery Start Time
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_start_time = {}

-- Size: Recovery Start Time
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_start_time.size = 8

-- Dissect: Recovery Start Time
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_start_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.recovery_start_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.recovery_start_time
  if otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base == 1 then field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.recovery_start_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Recovery Type
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type = {}

-- Size: Recovery Type
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.size = 1

-- Display: Recovery Type
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.labels = {
  [83] = "Recovery Type: Scheduling Start (83)",
  [66] = "Recovery Type: Recovery Begins (66)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.labels[value] or "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity = {}

-- Size: Remaining Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.size = 4

-- Display: Remaining Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reporting Status
otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status = {}

-- Size: Reporting Status
otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.size = 1

-- Display: Reporting Status
otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.labels = {
  ["A"] = "Reporting Status: Alternative Reporting Standard (A)",
  ["B"] = "Reporting Status: Bank Thrift (B)",
  ["F"] = "Reporting Status: Sec Reporting (F)",
  ["G"] = "Reporting Status: International Reporting (G)",
  ["I"] = "Reporting Status: Insurance Company (I)",
  ["N"] = "Reporting Status: No Reporting (N)",
  ["O"] = "Reporting Status: Other Reporting Standard (O)",
  ["R"] = "Reporting Status: Finra Reporting (R)",
  ["V"] = "Reporting Status: Sec Reporting Investment Company (V)",
  ["W"] = "Reporting Status: Sec Reporting Reg A (W)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.labels[value] or "Reporting Status: Unknown("..value..")"
end

-- Dissect: Reporting Status
otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Reserved Binary Long 8
otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8 = {}

-- Size: Reserved Binary Long 8
otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.size = 8

-- Display: Reserved Binary Long 8
otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.display = function(value)
  return "Reserved Binary Long 8: "..value
end

-- Dissect: Reserved Binary Long 8
otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reserved_binary_long_8, range, value, display)

  return offset + length, value
end

-- Security Action
otcmarkets_linknqb_depthofbook_link_v1_18.security_action = {}

-- Size: Security Action
otcmarkets_linknqb_depthofbook_link_v1_18.security_action.size = 1

-- Display: Security Action
otcmarkets_linknqb_depthofbook_link_v1_18.security_action.labels = {
  [1] = "Security Action: Update (1)",
  [2] = "Security Action: Add (2)",
  [3] = "Security Action: Delete (3)",
  [4] = "Security Action: Spin (4)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.security_action.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.security_action.labels[value] or "Security Action: Unknown("..value..")"
end

-- Dissect: Security Action
otcmarkets_linknqb_depthofbook_link_v1_18.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otcmarkets_linknqb_depthofbook_link_v1_18.security_id = {}

-- Size: Security Id
otcmarkets_linknqb_depthofbook_link_v1_18.security_id.size = 4

-- Display: Security Id
otcmarkets_linknqb_depthofbook_link_v1_18.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otcmarkets_linknqb_depthofbook_link_v1_18.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otcmarkets_linknqb_depthofbook_link_v1_18.security_status = {}

-- Size: Security Status
otcmarkets_linknqb_depthofbook_link_v1_18.security_status.size = 1

-- Display: Security Status
otcmarkets_linknqb_depthofbook_link_v1_18.security_status.labels = {
  ["A"] = "Security Status: Active (A)",
  ["Q"] = "Security Status: Quote Only (Q)",
  ["S"] = "Security Status: Suspended (S)",
  ["H"] = "Security Status: Halted (H)",
  ["I"] = "Security Status: Internal Halt (I)",
  ["R"] = "Security Status: Revoked (R)",
  ["D"] = "Security Status: Deleted (D)",
  ["X"] = "Security Status: Removed From Idqs (X)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.security_status.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.security_status.labels[value] or "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
otcmarkets_linknqb_depthofbook_link_v1_18.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_status, range, value, display)

  return offset + length, value
end

-- Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.seq_num = {}

-- Size: Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.size = 4

-- Display: Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Time
otcmarkets_linknqb_depthofbook_link_v1_18.session_time = {}

-- Size: Session Time
otcmarkets_linknqb_depthofbook_link_v1_18.session_time.size = 8

-- Dissect: Session Time
otcmarkets_linknqb_depthofbook_link_v1_18.session_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.session_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.session_time
  if otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base == 1 then field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.session_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Side Indicator
otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator = {}

-- Size: Side Indicator
otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.size = 1

-- Display: Side Indicator
otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otcmarkets_linknqb_depthofbook_link_v1_18.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otcmarkets_linknqb_depthofbook_link_v1_18.spin_end_time_milli.size = 8

-- Dissect: Spin End Time Milli
otcmarkets_linknqb_depthofbook_link_v1_18.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_end_time_milli
  if otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base == 1 then field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_end_time_milli_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Spin Last Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct = {}

-- Size: Spin Msg Ct
otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otcmarkets_linknqb_depthofbook_link_v1_18.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otcmarkets_linknqb_depthofbook_link_v1_18.spin_start_time_milli.size = 8

-- Dissect: Spin Start Time Milli
otcmarkets_linknqb_depthofbook_link_v1_18.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_start_time_milli
  if otcmarkets_linknqb_depthofbook_link_v1_18.absolute_time_base == 1 then field = omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_start_time_milli_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Spin Type
otcmarkets_linknqb_depthofbook_link_v1_18.spin_type = {}

-- Size: Spin Type
otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.size = 1

-- Display: Spin Type
otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.labels = {
  [1] = "Spin Type: Reference (1)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.labels[value] or "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Symbol
otcmarkets_linknqb_depthofbook_link_v1_18.symbol = {}

-- Size: Symbol
otcmarkets_linknqb_depthofbook_link_v1_18.symbol.size = 14

-- Display: Symbol
otcmarkets_linknqb_depthofbook_link_v1_18.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otcmarkets_linknqb_depthofbook_link_v1_18.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otcmarkets_linknqb_depthofbook_link_v1_18.tier = {}

-- Size: Tier
otcmarkets_linknqb_depthofbook_link_v1_18.tier.size = 1

-- Display: Tier
otcmarkets_linknqb_depthofbook_link_v1_18.tier.labels = {
  [0] = "Tier: No Tier (0)",
  [2] = "Tier: Otcqx Us (2)",
  [6] = "Tier: Otcqx International (6)",
  [10] = "Tier: Otcqb (10)",
  [20] = "Tier: Otcid (20)",
  [21] = "Tier: Pink Limited (21)",
  [30] = "Tier: Grey Market (30)",
  [40] = "Tier: Expert Market (40)",
  [50] = "Tier: Otc Bonds (50)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.tier.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.tier.labels[value] or "Tier: Unknown("..value..")"
end

-- Dissect: Tier
otcmarkets_linknqb_depthofbook_link_v1_18.tier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.tier, range, value, display)

  return offset + length, value
end

-- Time
otcmarkets_linknqb_depthofbook_link_v1_18.time = {}

-- Size: Time
otcmarkets_linknqb_depthofbook_link_v1_18.time.size = 4

-- Display: Time
otcmarkets_linknqb_depthofbook_link_v1_18.time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_linknqb_depthofbook_link_v1_18.timestamp_format == 0 then
    return "Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_linknqb_depthofbook_link_v1_18.timestamp_format == 2 and packet then
    local midnight = venue_midnight(packet, -otcmarkets_linknqb_depthofbook_link_v1_18.utc_offset_hours * 3600)

    if midnight then
      return "Time: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + seconds)..string.format("%03d", milliseconds)
    end
  end

  -- Time of day mode
  return "Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Time
otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.time, range, value, display)

  return offset + length, value
end

-- Trading Session
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session = {}

-- Size: Trading Session
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.size = 1

-- Display: Trading Session
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.labels = {
  [1] = "Trading Session: Order Acceptance (1)",
  [2] = "Trading Session: Pre Market Open (2)",
  [3] = "Trading Session: Market Open (3)",
  [4] = "Trading Session: After Hours (4)",
  [5] = "Trading Session: Market Close (5)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.labels[value] or "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unsolicited
otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited = {}

-- Size: Unsolicited
otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.size = 1

-- Display: Unsolicited
otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.labels = {
  ["Y"] = "Unsolicited: Unsolicited (Y)",
  ["N"] = "Unsolicited: Not Unsolicited (N)",
}

otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.display = function(value)
  return otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.labels[value] or "Unsolicited: Unknown("..value..")"
end

-- Dissect: Unsolicited
otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.unsolicited, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets LinkNqb DepthOfBook Link 1.18
-----------------------------------------------------------------------

-- System Recovery Event Message
otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message = {}

-- Size: System Recovery Event Message
otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.recovery_start_time.size

-- Display: System Recovery Event Message
otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Recovery Event Message
otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Deprecated: Binary Integer
  index, deprecated = otcmarkets_linknqb_depthofbook_link_v1_18.deprecated.dissect(buffer, index, packet, parent)

  -- Recovery Type: Binary Byte
  index, recovery_type = otcmarkets_linknqb_depthofbook_link_v1_18.recovery_type.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Binary Integer
  index, next_sequence_number = otcmarkets_linknqb_depthofbook_link_v1_18.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Recovery Start Time: Binary Long
  index, recovery_start_time = otcmarkets_linknqb_depthofbook_link_v1_18.recovery_start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Recovery Event Message
otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.system_recovery_event_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message = {}

-- Size: Imbalance Message
otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.symbol.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.size

-- Display: Imbalance Message
otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_depthofbook_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Current Inside Paired Shares: Binary Integer
  index, current_inside_paired_shares = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_paired_shares.dissect(buffer, index, packet, parent)

  -- Current Inside Closing Price: Binary Long Price
  index, current_inside_closing_price = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_closing_price.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Quantity: Binary Integer
  index, current_inside_imbalance_quantity = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Side: Printable ASCII
  index, current_inside_imbalance_side = otcmarkets_linknqb_depthofbook_link_v1_18.current_inside_imbalance_side.dissect(buffer, index, packet, parent)

  -- Full Closing Price: Binary Long Price
  index, full_closing_price = otcmarkets_linknqb_depthofbook_link_v1_18.full_closing_price.dissect(buffer, index, packet, parent)

  -- Ocio Only Closing Price: Binary Long Price
  index, ocio_only_closing_price = otcmarkets_linknqb_depthofbook_link_v1_18.ocio_only_closing_price.dissect(buffer, index, packet, parent)

  -- Moc Shares Unmatched: Printable ASCII
  index, moc_shares_unmatched = otcmarkets_linknqb_depthofbook_link_v1_18.moc_shares_unmatched.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.imbalance_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
otcmarkets_linknqb_depthofbook_link_v1_18.trade_message = {}

-- Size: Trade Message
otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.symbol.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.price.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.size

-- Display: Trade Message
otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_linknqb_depthofbook_link_v1_18.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_depthofbook_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_depthofbook_link_v1_18.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved Binary Long 8: Binary Long
  index, reserved_binary_long_8 = otcmarkets_linknqb_depthofbook_link_v1_18.reserved_binary_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.trade_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution With Price Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message = {}

-- Size: Order Execution With Price Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.price.size

-- Display: Order Execution With Price Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution With Price Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_depthofbook_link_v1_18.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution With Price Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_execution_with_price_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message = {}

-- Size: Order Execution Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.size

-- Display: Order Execution Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_linknqb_depthofbook_link_v1_18.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_linknqb_depthofbook_link_v1_18.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_linknqb_depthofbook_link_v1_18.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_execution_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message = {}

-- Size: Order Delete Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size

-- Display: Order Delete Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_delete_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message = {}

-- Size: Order Update Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.price.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.size

-- Display: Order Update Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_linknqb_depthofbook_link_v1_18.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_depthofbook_link_v1_18.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_update_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message = {}

-- Size: Order Add Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.quantity.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.symbol.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.price.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.size

-- Display: Order Add Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_depthofbook_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_depthofbook_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_linknqb_depthofbook_link_v1_18.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_linknqb_depthofbook_link_v1_18.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_depthofbook_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_depthofbook_link_v1_18.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Printable ASCII
  index, firm_id = otcmarkets_linknqb_depthofbook_link_v1_18.firm_id.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otcmarkets_linknqb_depthofbook_link_v1_18.unsolicited.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_linknqb_depthofbook_link_v1_18.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.order_add_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otcmarkets_linknqb_depthofbook_link_v1_18.security_flags = {}

-- Size: Security Flags
otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.size = 2

-- Display: Security Flags
otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Piggyback Flag flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Piggyback Flag"
  end
  -- Is Caveat Flag flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Caveat Flag"
  end
  -- Is Qib Only 144 A flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Qib Only 144 A"
  end
  -- Is Unsolicited Only Flag flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Unsolicited Only Flag"
  end
  -- Is Closing Cross Auction flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Closing Cross Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Flags
otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback Flag: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.piggyback_flag, range, value)

  -- Caveat Flag: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.caveat_flag, range, value)

  -- Qib Only 144 A: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.qib_only_144_a, range, value)

  -- Unsolicited Only Flag: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.unsolicited_only_flag, range, value)

  -- Closing Cross Auction: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.closing_cross_auction, range, value)

  -- Reserved 11: 11 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reserved_11, range, value)
end

-- Dissect: Security Flags
otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_flags, range, display)

  if show.structs then
    otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otcmarkets_linknqb_depthofbook_link_v1_18.security_message = {}

-- Size: Security Message
otcmarkets_linknqb_depthofbook_link_v1_18.security_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.symbol.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.last_update_milli.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.security_action.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.security_id.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.tier.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.security_status.size

-- Display: Security Message
otcmarkets_linknqb_depthofbook_link_v1_18.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otcmarkets_linknqb_depthofbook_link_v1_18.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_depthofbook_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Binary Long
  index, last_update_milli = otcmarkets_linknqb_depthofbook_link_v1_18.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Binary Integer
  index, security_action = otcmarkets_linknqb_depthofbook_link_v1_18.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Binary Byte
  index, asset_class = otcmarkets_linknqb_depthofbook_link_v1_18.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Binary Integer
  index, security_id = otcmarkets_linknqb_depthofbook_link_v1_18.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = otcmarkets_linknqb_depthofbook_link_v1_18.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Binary Byte
  index, tier = otcmarkets_linknqb_depthofbook_link_v1_18.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: Printable ASCII
  index, reporting_status = otcmarkets_linknqb_depthofbook_link_v1_18.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: Printable ASCII
  index, security_status = otcmarkets_linknqb_depthofbook_link_v1_18.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otcmarkets_linknqb_depthofbook_link_v1_18.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.security_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Message
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message = {}

-- Size: Trading Session Message
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.session_time.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.size

-- Display: Trading Session Message
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Message
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Time: Binary Long
  index, session_time = otcmarkets_linknqb_depthofbook_link_v1_18.session_time.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary Byte
  index, trading_session = otcmarkets_linknqb_depthofbook_link_v1_18.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Message
otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.trading_session_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message = {}

-- Size: End Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_end_time_milli.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.size

-- Display: End Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Binary Integer
  index, spin_msg_ct = otcmarkets_linknqb_depthofbook_link_v1_18.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Binary Long
  index, spin_end_time_milli = otcmarkets_linknqb_depthofbook_link_v1_18.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.end_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message = {}

-- Size: Start Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_start_time_milli.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.size

-- Display: Start Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_linknqb_depthofbook_link_v1_18.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Binary Long
  index, spin_start_time_milli = otcmarkets_linknqb_depthofbook_link_v1_18.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_linknqb_depthofbook_link_v1_18.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.start_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otcmarkets_linknqb_depthofbook_link_v1_18.payload = {}

-- Dispatch: Payload
otcmarkets_linknqb_depthofbook_link_v1_18.payload.dispatch = {
  [11] = otcmarkets_linknqb_depthofbook_link_v1_18.start_of_spin_message.dissect,
  [12] = otcmarkets_linknqb_depthofbook_link_v1_18.end_of_spin_message.dissect,
  [20] = otcmarkets_linknqb_depthofbook_link_v1_18.trading_session_message.dissect,
  [9] = otcmarkets_linknqb_depthofbook_link_v1_18.security_message.dissect,
  [21] = otcmarkets_linknqb_depthofbook_link_v1_18.order_add_message.dissect,
  [22] = otcmarkets_linknqb_depthofbook_link_v1_18.order_update_message.dissect,
  [23] = otcmarkets_linknqb_depthofbook_link_v1_18.order_delete_message.dissect,
  [24] = otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_message.dissect,
  [25] = otcmarkets_linknqb_depthofbook_link_v1_18.order_execution_with_price_message.dissect,
  [26] = otcmarkets_linknqb_depthofbook_link_v1_18.trade_message.dissect,
  [28] = otcmarkets_linknqb_depthofbook_link_v1_18.imbalance_message.dissect,
  [74] = otcmarkets_linknqb_depthofbook_link_v1_18.system_recovery_event_message.dissect,
}

-- Dissect: Payload
otcmarkets_linknqb_depthofbook_link_v1_18.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = otcmarkets_linknqb_depthofbook_link_v1_18.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otcmarkets_linknqb_depthofbook_link_v1_18.message_header = {}

-- Size: Message Header
otcmarkets_linknqb_depthofbook_link_v1_18.message_header.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.message_size.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.message_type.size

-- Display: Message Header
otcmarkets_linknqb_depthofbook_link_v1_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_linknqb_depthofbook_link_v1_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_linknqb_depthofbook_link_v1_18.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = otcmarkets_linknqb_depthofbook_link_v1_18.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_linknqb_depthofbook_link_v1_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_linknqb_depthofbook_link_v1_18.message = {}

-- Read runtime size of: Message
otcmarkets_linknqb_depthofbook_link_v1_18.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Size
  local message_size = buffer(offset, 2):uint()

  return message_size
end

-- Display: Message
otcmarkets_linknqb_depthofbook_link_v1_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_linknqb_depthofbook_link_v1_18.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_linknqb_depthofbook_link_v1_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = otcmarkets_linknqb_depthofbook_link_v1_18.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otcmarkets_linknqb_depthofbook_link_v1_18.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = otcmarkets_linknqb_depthofbook_link_v1_18.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.message, buffer(offset, 0))
    local current = otcmarkets_linknqb_depthofbook_link_v1_18.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_linknqb_depthofbook_link_v1_18.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat Packet
otcmarkets_linknqb_depthofbook_link_v1_18.heartbeat_packet = {}

-- Display: Heartbeat Packet
otcmarkets_linknqb_depthofbook_link_v1_18.heartbeat_packet.display = function(packet, parent, length)
  return "Heartbeat Packet"
end


-- Dissect: Heartbeat Packet
otcmarkets_linknqb_depthofbook_link_v1_18.heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Block
otcmarkets_linknqb_depthofbook_link_v1_18.message_block = {}

-- Dispatch: Message Block
otcmarkets_linknqb_depthofbook_link_v1_18.message_block.dispatch = {
  [1] = otcmarkets_linknqb_depthofbook_link_v1_18.heartbeat_packet.dissect,
}

-- Dissect: Message Block
otcmarkets_linknqb_depthofbook_link_v1_18.message_block.dissect = function(buffer, offset, packet, parent, heartbeat)
  local dissect = otcmarkets_linknqb_depthofbook_link_v1_18.message_block.dispatch[bit.band(packet_flag, 0x01)]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Size
    local message_size = buffer(offset, 2):uint()

    -- Message: Struct of 2 fields
    offset = otcmarkets_linknqb_depthofbook_link_v1_18.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Flag
otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag = {}

-- Size: Packet Flag
otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.size = 1

-- Display: Packet Flag
otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Heartbeat flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Heartbeat"
  end
  -- Is Seq Num Reset flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Seq Num Reset"
  end
  -- Is Replay flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Replay"
  end
  -- Is Test flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Test"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Flag
otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.heartbeat, range, value)

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.seq_num_reset, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.reserved_4, range, value)

  -- Replay: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.replay, range, value)

  -- Test: 1 Bit
  parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.test, range, value)
end

-- Dissect: Packet Flag
otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_flag, range, display)

  if show.structs then
    otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
otcmarkets_linknqb_depthofbook_link_v1_18.packet_header = {}

-- Size: Packet Header
otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.size =
  otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.message_count.size + 
  otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.size

-- Display: Packet Header
otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otcmarkets_linknqb_depthofbook_link_v1_18.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otcmarkets_linknqb_depthofbook_link_v1_18.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otcmarkets_linknqb_depthofbook_link_v1_18.packet_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = otcmarkets_linknqb_depthofbook_link_v1_18.message_count.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otcmarkets_linknqb_depthofbook_link_v1_18.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18.fields.packet_header, buffer(offset, 0))
    local index = otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otcmarkets_linknqb_depthofbook_link_v1_18.packet = {}

-- Verify required size of Udp packet
otcmarkets_linknqb_depthofbook_link_v1_18.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.size
end

-- Dissect Packet
otcmarkets_linknqb_depthofbook_link_v1_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otcmarkets_linknqb_depthofbook_link_v1_18.packet_header.dissect(buffer, index, packet, parent)

  -- Message Block: Runtime Type with 2 branches
  index = otcmarkets_linknqb_depthofbook_link_v1_18.message_block.dissect(buffer, index, packet, parent, heartbeat)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_linknqb_depthofbook_link_v1_18.init()
end

-- Dissector for OtcMarkets LinkNqb DepthOfBook Link 1.18
function omi_otcmarkets_linknqb_depthofbook_link_v1_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_linknqb_depthofbook_link_v1_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_linknqb_depthofbook_link_v1_18, buffer(), omi_otcmarkets_linknqb_depthofbook_link_v1_18.description, "("..buffer:len().." Bytes)")
  return otcmarkets_linknqb_depthofbook_link_v1_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets LinkNqb DepthOfBook Link 1.18 (Udp)
local function omi_otcmarkets_linknqb_depthofbook_link_v1_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_linknqb_depthofbook_link_v1_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_linknqb_depthofbook_link_v1_18
  omi_otcmarkets_linknqb_depthofbook_link_v1_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets LinkNqb DepthOfBook Link 1.18
omi_otcmarkets_linknqb_depthofbook_link_v1_18:register_heuristic("udp", omi_otcmarkets_linknqb_depthofbook_link_v1_18_udp_heuristic)

-- Register OtcMarkets LinkNqb DepthOfBook Link 1.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_otcmarkets_linknqb_depthofbook_link_v1_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 1.18
--   Date: Friday, May 1, 2026
--   Specification: OTC-Link-NQB-MD-Specification.pdf
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
