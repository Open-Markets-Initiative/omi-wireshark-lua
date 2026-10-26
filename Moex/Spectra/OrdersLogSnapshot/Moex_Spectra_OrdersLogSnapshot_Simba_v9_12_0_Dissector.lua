-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Protocol
local omi_moex_spectra_orderslogsnapshot_simba_v9_12_0 = Proto("Omi.Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0", "Moex Spectra OrdersLogSnapshot Simba 9.12.0")

-- Protocol table
local moex_spectra_orderslogsnapshot_simba_v9_12_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Fields
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.active_side = ProtoField.new("Active Side", "moex.spectra.orderslogsnapshot.simba.v9.12.0.activeside", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000020000000000, "ActiveSide")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.block_length = ProtoField.new("Block Length", "moex.spectra.orderslogsnapshot.simba.v9.12.0.blocklength", ftypes.UINT16, nil, nil, nil, "blockLength")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.boc = ProtoField.new("Boc", "moex.spectra.orderslogsnapshot.simba.v9.12.0.boc", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x1000000000000000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.cancel = ProtoField.new("Cancel", "moex.spectra.orderslogsnapshot.simba.v9.12.0.cancel", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000200000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.cod = ProtoField.new("Cod", "moex.spectra.orderslogsnapshot.simba.v9.12.0.cod", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000100000000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.cross_trade = ProtoField.new("Cross Trade", "moex.spectra.orderslogsnapshot.simba.v9.12.0.crosstrade", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000020000000, "CrossTrade")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.day = ProtoField.new("Day", "moex.spectra.orderslogsnapshot.simba.v9.12.0.day", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000001)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.due_to_cross_cancel = ProtoField.new("Due To Cross Cancel", "moex.spectra.orderslogsnapshot.simba.v9.12.0.duetocrosscancel", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000002000, "DueToCrossCancel")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.during_discrete_auction = ProtoField.new("During Discrete Auction", "moex.spectra.orderslogsnapshot.simba.v9.12.0.duringdiscreteauction", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x4000000000000000, "DuringDiscreteAuction")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.end_of_snapshot = ProtoField.new("End Of Snapshot", "moex.spectra.orderslogsnapshot.simba.v9.12.0.endofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "EndOfSnapshot")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.end_of_transaction = ProtoField.new("End Of Transaction", "moex.spectra.orderslogsnapshot.simba.v9.12.0.endoftransaction", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000001000, "EndOfTransaction")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.exchange_trading_session_id = ProtoField.new("Exchange Trading Session Id", "moex.spectra.orderslogsnapshot.simba.v9.12.0.exchangetradingsessionid", ftypes.UINT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.fok = ProtoField.new("Fok", "moex.spectra.orderslogsnapshot.simba.v9.12.0.fok", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000080000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.group_size = ProtoField.new("Group Size", "moex.spectra.orderslogsnapshot.simba.v9.12.0.groupsize", ftypes.STRING, nil, nil, nil, "groupSize")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.incremental_packet = ProtoField.new("Incremental Packet", "moex.spectra.orderslogsnapshot.simba.v9.12.0.incrementalpacket", ftypes.UINT16, {[0]="Snapshot Packet", [1]="Incremental Packet"}, base.DEC, 0x0008, "IncrementalPacket")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.ioc = ProtoField.new("Ioc", "moex.spectra.orderslogsnapshot.simba.v9.12.0.ioc", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000002)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.last_fragment = ProtoField.new("Last Fragment", "moex.spectra.orderslogsnapshot.simba.v9.12.0.lastfragment", ftypes.UINT16, {[0]="Fragment", [1]="Last Fragment"}, base.DEC, 0x0001, "LastFragment")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.last_msg_seq_num_processed_u_int_32 = ProtoField.new("Last Msg Seq Num Processed U Int 32", "moex.spectra.orderslogsnapshot.simba.v9.12.0.lastmsgseqnumprocesseduint32", ftypes.UINT32, nil, nil, nil, "LastMsgSeqNumProcessed")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "moex.spectra.orderslogsnapshot.simba.v9.12.0.marketdatapacketheader", ftypes.STRING, nil, nil, nil, "MarketDataDummyMessage")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.mass_cancel = ProtoField.new("Mass Cancel", "moex.spectra.orderslogsnapshot.simba.v9.12.0.masscancel", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000400000, "MassCancel")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_id_int_64_null_optional = ProtoField.new("Md Entry Id Int 64 Null optional", "moex.spectra.orderslogsnapshot.simba.v9.12.0.mdentryidint64nulloptional", ftypes.INT64, nil, nil, nil, "Order ID")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_px_decimal_5_null_optional = ProtoField.new("Md Entry Px Decimal 5 Null optional", "moex.spectra.orderslogsnapshot.simba.v9.12.0.mdentrypxdecimal5nulloptional", ftypes.DOUBLE, nil, nil, nil, "MDEntryPx")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_size_int_64_null_optional = ProtoField.new("Md Entry Size Int 64 Null optional", "moex.spectra.orderslogsnapshot.simba.v9.12.0.mdentrysizeint64nulloptional", ftypes.INT64, nil, nil, nil, "MDEntrySize")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "moex.spectra.orderslogsnapshot.simba.v9.12.0.mdentrytype", ftypes.STRING, nil, nil, nil, "MDEntryType")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_flags = ProtoField.new("Md Flags", "moex.spectra.orderslogsnapshot.simba.v9.12.0.mdflags", ftypes.STRING, nil, nil, nil, "MDFlagsSet bit set")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_flags_2 = ProtoField.new("Md Flags 2", "moex.spectra.orderslogsnapshot.simba.v9.12.0.mdflags2", ftypes.STRING, nil, nil, nil, "MDFlags2Set bit set")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.msg_flags = ProtoField.new("Msg Flags", "moex.spectra.orderslogsnapshot.simba.v9.12.0.msgflags", ftypes.STRING, nil, nil, nil, "Message flags, least significant bit first, as the schema's MsgFlagsSet declares them")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "moex.spectra.orderslogsnapshot.simba.v9.12.0.msgseqnum", ftypes.UINT32, nil, nil, nil, "MsgSeqNum")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.msg_size = ProtoField.new("Msg Size", "moex.spectra.orderslogsnapshot.simba.v9.12.0.msgsize", ftypes.UINT16, nil, nil, nil, "MsgSize")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.multi_leg = ProtoField.new("Multi Leg", "moex.spectra.orderslogsnapshot.simba.v9.12.0.multileg", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000008000000, "MultiLeg")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.negotiated = ProtoField.new("Negotiated", "moex.spectra.orderslogsnapshot.simba.v9.12.0.negotiated", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000004000000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.negotiated_match_by_ref = ProtoField.new("Negotiated Match By Ref", "moex.spectra.orderslogsnapshot.simba.v9.12.0.negotiatedmatchbyref", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000080000000, "NegotiatedMatchByRef")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.new_seq_no = ProtoField.new("New Seq No", "moex.spectra.orderslogsnapshot.simba.v9.12.0.newseqno", ftypes.UINT32, nil, nil, nil, "NewSeqNo")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.non_quote = ProtoField.new("Non Quote", "moex.spectra.orderslogsnapshot.simba.v9.12.0.nonquote", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000004, "NonQuote")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "moex.spectra.orderslogsnapshot.simba.v9.12.0.numingroupuint8", ftypes.UINT8, nil, nil, nil, "numInGroup")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message_no_m_d_entries_group = ProtoField.new("Order Book Snapshot Message No M D Entries Group", "moex.spectra.orderslogsnapshot.simba.v9.12.0.orderbooksnapshotmessagenomdentriesgroup", ftypes.STRING, nil, nil, nil, "NoMDEntries")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message_no_m_d_entries_groups = ProtoField.new("Order Book Snapshot Message No M D Entries Groups", "moex.spectra.orderslogsnapshot.simba.v9.12.0.orderbooksnapshotmessagenomdentriesgroups", ftypes.STRING, nil, nil, nil, "NoMDEntries Block")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.passive_side = ProtoField.new("Passive Side", "moex.spectra.orderslogsnapshot.simba.v9.12.0.passiveside", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000040000000000, "PassiveSide")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.poss_dup_flag = ProtoField.new("Poss Dup Flag", "moex.spectra.orderslogsnapshot.simba.v9.12.0.possdupflag", ftypes.UINT16, {[0]="Online Updates", [1]="Full Order Books"}, base.DEC, 0x0010, "PossDupFlag")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.replace = ProtoField.new("Replace", "moex.spectra.orderslogsnapshot.simba.v9.12.0.replace", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000100000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.reserved_63 = ProtoField.new("Reserved 63", "moex.spectra.orderslogsnapshot.simba.v9.12.0.reserved63", ftypes.UINT64, nil, base.DEC, UInt64(0xFFFFFFFE, 0xFFFFFFFF), "63 reserved bits")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "moex.spectra.orderslogsnapshot.simba.v9.12.0.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Bits the schema's MsgFlagsSet leaves unused")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.rfs = ProtoField.new("Rfs", "moex.spectra.orderslogsnapshot.simba.v9.12.0.rfs", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000400000000000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.rpt_seq = ProtoField.new("Rpt Seq", "moex.spectra.orderslogsnapshot.simba.v9.12.0.rptseq", ftypes.UINT32, nil, nil, nil, "RptSeq")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.schema_id = ProtoField.new("Schema Id", "moex.spectra.orderslogsnapshot.simba.v9.12.0.schemaid", ftypes.UINT16, nil, nil, nil, "Message schema identifier")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.second_leg = ProtoField.new("Second Leg", "moex.spectra.orderslogsnapshot.simba.v9.12.0.secondleg", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000004000, "SecondLeg")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.security_id = ProtoField.new("Security Id", "moex.spectra.orderslogsnapshot.simba.v9.12.0.securityid", ftypes.INT32, nil, nil, nil, "SecurityID")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sending_time = ProtoField.new("Sending Time", "moex.spectra.orderslogsnapshot.simba.v9.12.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "SendingTime")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sending_time_utc = ProtoField.new("Sending Time", "moex.spectra.orderslogsnapshot.simba.v9.12.0.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "SendingTime")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.start_of_snapshot = ProtoField.new("Start Of Snapshot", "moex.spectra.orderslogsnapshot.simba.v9.12.0.startofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "StartOfSnapshot")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.synthetic = ProtoField.new("Synthetic", "moex.spectra.orderslogsnapshot.simba.v9.12.0.synthetic", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000200000000000)
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.synthetic_passive = ProtoField.new("Synthetic Passive", "moex.spectra.orderslogsnapshot.simba.v9.12.0.syntheticpassive", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0200000000000000, "SyntheticPassive")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.template_id = ProtoField.new("Template Id", "moex.spectra.orderslogsnapshot.simba.v9.12.0.templateid", ftypes.UINT16, nil, nil, nil, "Message template identifier")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.trade_id_int_64_null_optional = ProtoField.new("Trade Id Int 64 Null optional", "moex.spectra.orderslogsnapshot.simba.v9.12.0.tradeidint64nulloptional", ftypes.INT64, nil, nil, nil, "Trade ID")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.transact_time = ProtoField.new("Transact Time", "moex.spectra.orderslogsnapshot.simba.v9.12.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TransactTime")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.transact_time_utc = ProtoField.new("Transact Time", "moex.spectra.orderslogsnapshot.simba.v9.12.0.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TransactTime")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_10 = ProtoField.new("Unused Md Flags Set 10", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset10", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000400, "Unused MDFlagsSet 10")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_11 = ProtoField.new("Unused Md Flags Set 11", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset11", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000800, "Unused MDFlagsSet 11")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_15 = ProtoField.new("Unused Md Flags Set 15", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset15", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000008000, "Unused MDFlagsSet 15")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_16 = ProtoField.new("Unused Md Flags Set 16", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset16", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000010000, "Unused MDFlagsSet 16")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_17 = ProtoField.new("Unused Md Flags Set 17", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset17", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000020000, "Unused MDFlagsSet 17")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_18 = ProtoField.new("Unused Md Flags Set 18", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset18", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000040000, "Unused MDFlagsSet 18")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_23 = ProtoField.new("Unused Md Flags Set 23", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset23", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000800000, "Unused MDFlagsSet 23")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_24 = ProtoField.new("Unused Md Flags Set 24", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset24", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000001000000, "Unused MDFlagsSet 24")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_25 = ProtoField.new("Unused Md Flags Set 25", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset25", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000002000000, "Unused MDFlagsSet 25")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_28 = ProtoField.new("Unused Md Flags Set 28", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset28", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000010000000, "Unused MDFlagsSet 28")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_3 = ProtoField.new("Unused Md Flags Set 3", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset3", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000008, "Unused MDFlagsSet 3")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_30 = ProtoField.new("Unused Md Flags Set 30", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset30", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000040000000, "Unused MDFlagsSet 30")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_33 = ProtoField.new("Unused Md Flags Set 33", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset33", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000200000000, "Unused MDFlagsSet 33")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_34 = ProtoField.new("Unused Md Flags Set 34", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset34", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000400000000, "Unused MDFlagsSet 34")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_35 = ProtoField.new("Unused Md Flags Set 35", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset35", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000800000000, "Unused MDFlagsSet 35")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_36 = ProtoField.new("Unused Md Flags Set 36", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset36", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000001000000000, "Unused MDFlagsSet 36")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_37 = ProtoField.new("Unused Md Flags Set 37", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset37", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000002000000000, "Unused MDFlagsSet 37")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_38 = ProtoField.new("Unused Md Flags Set 38", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset38", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000004000000000, "Unused MDFlagsSet 38")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_39 = ProtoField.new("Unused Md Flags Set 39", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset39", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000008000000000, "Unused MDFlagsSet 39")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_4 = ProtoField.new("Unused Md Flags Set 4", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset4", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000010, "Unused MDFlagsSet 4")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_40 = ProtoField.new("Unused Md Flags Set 40", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset40", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000010000000000, "Unused MDFlagsSet 40")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_43 = ProtoField.new("Unused Md Flags Set 43", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset43", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000080000000000, "Unused MDFlagsSet 43")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_44 = ProtoField.new("Unused Md Flags Set 44", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset44", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000100000000000, "Unused MDFlagsSet 44")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_47 = ProtoField.new("Unused Md Flags Set 47", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset47", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000800000000000, "Unused MDFlagsSet 47")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_48 = ProtoField.new("Unused Md Flags Set 48", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset48", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0001000000000000, "Unused MDFlagsSet 48")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_49 = ProtoField.new("Unused Md Flags Set 49", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset49", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0002000000000000, "Unused MDFlagsSet 49")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_5 = ProtoField.new("Unused Md Flags Set 5", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset5", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000020, "Unused MDFlagsSet 5")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_50 = ProtoField.new("Unused Md Flags Set 50", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset50", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0004000000000000, "Unused MDFlagsSet 50")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_51 = ProtoField.new("Unused Md Flags Set 51", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset51", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0008000000000000, "Unused MDFlagsSet 51")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_52 = ProtoField.new("Unused Md Flags Set 52", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset52", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0010000000000000, "Unused MDFlagsSet 52")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_53 = ProtoField.new("Unused Md Flags Set 53", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset53", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0020000000000000, "Unused MDFlagsSet 53")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_54 = ProtoField.new("Unused Md Flags Set 54", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset54", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0040000000000000, "Unused MDFlagsSet 54")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_55 = ProtoField.new("Unused Md Flags Set 55", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset55", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0080000000000000, "Unused MDFlagsSet 55")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_56 = ProtoField.new("Unused Md Flags Set 56", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset56", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0100000000000000, "Unused MDFlagsSet 56")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_58 = ProtoField.new("Unused Md Flags Set 58", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset58", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0400000000000000, "Unused MDFlagsSet 58")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_59 = ProtoField.new("Unused Md Flags Set 59", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset59", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0800000000000000, "Unused MDFlagsSet 59")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_6 = ProtoField.new("Unused Md Flags Set 6", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset6", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000040, "Unused MDFlagsSet 6")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_61 = ProtoField.new("Unused Md Flags Set 61", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset61", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x2000000000000000, "Unused MDFlagsSet 61")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_63 = ProtoField.new("Unused Md Flags Set 63", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset63", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, UInt64(0x00000000, 0x80000000), "Unused MDFlagsSet 63")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_7 = ProtoField.new("Unused Md Flags Set 7", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset7", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000080, "Unused MDFlagsSet 7")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_8 = ProtoField.new("Unused Md Flags Set 8", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset8", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000100, "Unused MDFlagsSet 8")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_9 = ProtoField.new("Unused Md Flags Set 9", "moex.spectra.orderslogsnapshot.simba.v9.12.0.unusedmdflagsset9", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000200, "Unused MDFlagsSet 9")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.version = ProtoField.new("Version", "moex.spectra.orderslogsnapshot.simba.v9.12.0.version", ftypes.UINT16, nil, nil, nil, "Message schema version")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.zero = ProtoField.new("Zero", "moex.spectra.orderslogsnapshot.simba.v9.12.0.zero", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000001)

-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Framing
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.message = ProtoField.new("Message", "moex.spectra.orderslogsnapshot.simba.v9.12.0.message", ftypes.STRING, nil, nil, nil, "Moex Simba Market Data Message")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sbe_header = ProtoField.new("Sbe Header", "moex.spectra.orderslogsnapshot.simba.v9.12.0.sbeheader", ftypes.STRING, nil, nil, nil, "Root block length, message template id, message schema id and schema version")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.udp_packet = ProtoField.new("Udp Packet", "moex.spectra.orderslogsnapshot.simba.v9.12.0.udppacket", ftypes.STRING, nil, nil, nil, "Moex Simba Snapshot Packet")

-- Moex Spectra OrdersLogSnapshot 9.12.0 Application Messages
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "moex.spectra.orderslogsnapshot.simba.v9.12.0.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "HeartbeatMessage")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message = ProtoField.new("Order Book Snapshot Message", "moex.spectra.orderslogsnapshot.simba.v9.12.0.orderbooksnapshotmessage", ftypes.STRING, nil, nil, nil, "OrderBookSnapshotMessage")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "moex.spectra.orderslogsnapshot.simba.v9.12.0.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "SequenceResetMessage")

-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Generated Fields
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message_no_m_d_entries_group_index = ProtoField.new("Order Book Snapshot Message No M D Entries Group Index", "moex.spectra.orderslogsnapshot.simba.v9.12.0.orderbooksnapshotmessagenomdentriesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
moex_spectra_orderslogsnapshot_simba_v9_12_0.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Moex Spectra OrdersLogSnapshot Simba 9.12.0 Show Options
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_application_messages then
    show.application_messages = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_application_messages
  end
  if show.headers ~= omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_headers then
    show.headers = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_structs then
    show.structs = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_structs
  end
  if show.indexes ~= omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_indexes then
    show.indexes = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.show_indexes
  end
  if moex_spectra_orderslogsnapshot_simba_v9_12_0.absolute_time_base ~= omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.absolute_time_base then
    moex_spectra_orderslogsnapshot_simba_v9_12_0.absolute_time_base = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Moex Spectra OrdersLogSnapshot Simba 9.12.0 Fields
-----------------------------------------------------------------------

-- Block Length
moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length = {}

-- Size: Block Length
moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.size = 2

-- Display: Block Length
moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Exchange Trading Session Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id = {}

-- Size: Exchange Trading Session Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.size = 4

-- Display: Exchange Trading Session Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.display = function(value)
  return "Exchange Trading Session Id: "..value
end

-- Dissect: Exchange Trading Session Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.exchange_trading_session_id, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed U Int 32
moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32 = {}

-- Size: Last Msg Seq Num Processed U Int 32
moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.size = 4

-- Display: Last Msg Seq Num Processed U Int 32
moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.display = function(value)
  return "Last Msg Seq Num Processed U Int 32: "..value
end

-- Dissect: Last Msg Seq Num Processed U Int 32
moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.last_msg_seq_num_processed_u_int_32, range, value, display)

  return offset + length, value
end

-- Md Entry Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional = {}

-- Size: Md Entry Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.size = 8

-- Display: Md Entry Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Md Entry Id Int 64 Null optional: No Value"
  end

  return "Md Entry Id Int 64 Null optional: "..value
end

-- Dissect: Md Entry Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_id_int_64_null_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Px Decimal 5 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional = {}

-- Size: Md Entry Px Decimal 5 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.size = 8

-- Display: Md Entry Px Decimal 5 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px Decimal 5 Null optional: No Value"
  end

  return "Md Entry Px Decimal 5 Null optional: "..value
end

-- Translate: Md Entry Px Decimal 5 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Md Entry Px Decimal 5 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.translate(raw)
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_px_decimal_5_null_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Size Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional = {}

-- Size: Md Entry Size Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.size = 8

-- Display: Md Entry Size Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Md Entry Size Int 64 Null optional: No Value"
  end

  return "Md Entry Size Int 64 Null optional: "..value
end

-- Dissect: Md Entry Size Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_size_int_64_null_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Type
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type = {}

-- Size: Md Entry Type
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.size = 1

-- Display: Md Entry Type
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type: No Value"
  end

  if value == "0" then
    return "Md Entry Type: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Offer (1)"
  end
  if value == "J" then
    return "Md Entry Type: Empty Book (J)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num = {}

-- Size: Msg Seq Num
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.size = 4

-- Display: Msg Seq Num
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size = {}

-- Size: Msg Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.size = 2

-- Display: Msg Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.msg_size, range, value, display)

  return offset + length, value
end

-- New Seq No
moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no = {}

-- Size: New Seq No
moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.size = 4

-- Display: New Seq No
moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Num In Group uint 8
moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8 = {}

-- Size: Num In Group uint 8
moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.size = 1

-- Display: Num In Group uint 8
moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.display = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Rpt Seq
moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq = {}

-- Size: Rpt Seq
moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.size = 4

-- Display: Rpt Seq
moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Schema Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id = {}

-- Size: Schema Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.size = 2

-- Display: Schema Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.display = function(value)
  if value == 19780 then
    return "Schema Id: 19780"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id = {}

-- Size: Security Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.size = 4

-- Display: Security Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Sending Time
moex_spectra_orderslogsnapshot_simba_v9_12_0.sending_time = {}

-- Size: Sending Time
moex_spectra_orderslogsnapshot_simba_v9_12_0.sending_time.size = 8

-- Dissect: Sending Time
moex_spectra_orderslogsnapshot_simba_v9_12_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sending_time
  if moex_spectra_orderslogsnapshot_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sending_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Template Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id = {}

-- Size: Template Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.size = 2

-- Display: Template Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.labels = {
  [1] = "Template Id: Heartbeat Message (1)",
  [2] = "Template Id: Sequence Reset Message (2)",
  [14] = "Template Id: Best Prices Message (14)",
  [4] = "Template Id: Empty Book Message (4)",
  [15] = "Template Id: Order Update Message (15)",
  [16] = "Template Id: Order Execution Message (16)",
  [17] = "Template Id: Order Book Snapshot Message (17)",
  [29] = "Template Id: Security Definition Message (29)",
  [28] = "Template Id: Security Status Message (28)",
  [10] = "Template Id: Security Definition Update Report Message (10)",
  [26] = "Template Id: Trading Session Status Message (26)",
  [24] = "Template Id: Discrete Auction Message (24)",
  [19] = "Template Id: Security Mass Status Message (19)",
  [22] = "Template Id: Security Group Status Message (22)",
  [1000] = "Template Id: Logon Message (1000)",
  [1001] = "Template Id: Logout Message (1001)",
  [1002] = "Template Id: Market Data Request Message (1002)",
  [1003] = "Template Id: Market Data Dummy Message (1003)",
}

moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.display = function(value)
  return moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Trade Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional = {}

-- Size: Trade Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.size = 8

-- Display: Trade Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Trade Id Int 64 Null optional: No Value"
  end

  return "Trade Id Int 64 Null optional: "..value
end

-- Dissect: Trade Id Int 64 Null optional
moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.trade_id_int_64_null_optional, range, value, display)

  return offset + length, value
end

-- Transact Time
moex_spectra_orderslogsnapshot_simba_v9_12_0.transact_time = {}

-- Size: Transact Time
moex_spectra_orderslogsnapshot_simba_v9_12_0.transact_time.size = 8

-- Dissect: Transact Time
moex_spectra_orderslogsnapshot_simba_v9_12_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.transact_time
  if moex_spectra_orderslogsnapshot_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Version
moex_spectra_orderslogsnapshot_simba_v9_12_0.version = {}

-- Size: Version
moex_spectra_orderslogsnapshot_simba_v9_12_0.version.size = 2

-- Display: Version
moex_spectra_orderslogsnapshot_simba_v9_12_0.version.display = function(value)
  if value == 10 then
    return "Version: Version FIX5SP2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
moex_spectra_orderslogsnapshot_simba_v9_12_0.version.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderslogsnapshot_simba_v9_12_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Moex Spectra OrdersLogSnapshot Simba 9.12.0
-----------------------------------------------------------------------

-- Md Flags 2
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2 = {}

-- Size: Md Flags 2
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.size = 8

-- Display: Md Flags 2
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Zero flag set?
  if value:band(0x0000000000000001) ~= UInt64(0) then
    flags[#flags + 1] = "Zero"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Md Flags 2
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.bits = function(range, value, packet, parent)

  -- Zero: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.zero, range, value)

  -- Reserved 63: 63 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.reserved_63, range, value)
end

-- Dissect: Md Flags 2
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_flags_2, range, display)

  if show.structs then
    moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Md Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags = {}

-- Size: Md Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.size = 8

-- Display: Md Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Day flag set?
  if value:band(0x0000000000000001) ~= UInt64(0) then
    flags[#flags + 1] = "Day"
  end
  -- Is Ioc flag set?
  if value:band(0x0000000000000002) ~= UInt64(0) then
    flags[#flags + 1] = "Ioc"
  end
  -- Is Non Quote flag set?
  if value:band(0x0000000000000004) ~= UInt64(0) then
    flags[#flags + 1] = "Non Quote"
  end
  -- Is Unused Md Flags Set 3 flag set?
  if value:band(0x0000000000000008) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 3"
  end
  -- Is Unused Md Flags Set 4 flag set?
  if value:band(0x0000000000000010) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 4"
  end
  -- Is Unused Md Flags Set 5 flag set?
  if value:band(0x0000000000000020) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 5"
  end
  -- Is Unused Md Flags Set 6 flag set?
  if value:band(0x0000000000000040) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 6"
  end
  -- Is Unused Md Flags Set 7 flag set?
  if value:band(0x0000000000000080) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 7"
  end
  -- Is Unused Md Flags Set 8 flag set?
  if value:band(0x0000000000000100) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 8"
  end
  -- Is Unused Md Flags Set 9 flag set?
  if value:band(0x0000000000000200) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 9"
  end
  -- Is Unused Md Flags Set 10 flag set?
  if value:band(0x0000000000000400) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 10"
  end
  -- Is Unused Md Flags Set 11 flag set?
  if value:band(0x0000000000000800) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 11"
  end
  -- Is End Of Transaction flag set?
  if value:band(0x0000000000001000) ~= UInt64(0) then
    flags[#flags + 1] = "End Of Transaction"
  end
  -- Is Due To Cross Cancel flag set?
  if value:band(0x0000000000002000) ~= UInt64(0) then
    flags[#flags + 1] = "Due To Cross Cancel"
  end
  -- Is Second Leg flag set?
  if value:band(0x0000000000004000) ~= UInt64(0) then
    flags[#flags + 1] = "Second Leg"
  end
  -- Is Unused Md Flags Set 15 flag set?
  if value:band(0x0000000000008000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 15"
  end
  -- Is Unused Md Flags Set 16 flag set?
  if value:band(0x0000000000010000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 16"
  end
  -- Is Unused Md Flags Set 17 flag set?
  if value:band(0x0000000000020000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 17"
  end
  -- Is Unused Md Flags Set 18 flag set?
  if value:band(0x0000000000040000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 18"
  end
  -- Is Fok flag set?
  if value:band(0x0000000000080000) ~= UInt64(0) then
    flags[#flags + 1] = "Fok"
  end
  -- Is Replace flag set?
  if value:band(0x0000000000100000) ~= UInt64(0) then
    flags[#flags + 1] = "Replace"
  end
  -- Is Cancel flag set?
  if value:band(0x0000000000200000) ~= UInt64(0) then
    flags[#flags + 1] = "Cancel"
  end
  -- Is Mass Cancel flag set?
  if value:band(0x0000000000400000) ~= UInt64(0) then
    flags[#flags + 1] = "Mass Cancel"
  end
  -- Is Unused Md Flags Set 23 flag set?
  if value:band(0x0000000000800000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 23"
  end
  -- Is Unused Md Flags Set 24 flag set?
  if value:band(0x0000000001000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 24"
  end
  -- Is Unused Md Flags Set 25 flag set?
  if value:band(0x0000000002000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 25"
  end
  -- Is Negotiated flag set?
  if value:band(0x0000000004000000) ~= UInt64(0) then
    flags[#flags + 1] = "Negotiated"
  end
  -- Is Multi Leg flag set?
  if value:band(0x0000000008000000) ~= UInt64(0) then
    flags[#flags + 1] = "Multi Leg"
  end
  -- Is Unused Md Flags Set 28 flag set?
  if value:band(0x0000000010000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 28"
  end
  -- Is Cross Trade flag set?
  if value:band(0x0000000020000000) ~= UInt64(0) then
    flags[#flags + 1] = "Cross Trade"
  end
  -- Is Unused Md Flags Set 30 flag set?
  if value:band(0x0000000040000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 30"
  end
  -- Is Negotiated Match By Ref flag set?
  if value:band(0x0000000080000000) ~= UInt64(0) then
    flags[#flags + 1] = "Negotiated Match By Ref"
  end
  -- Is Cod flag set?
  if value:band(0x0000000100000000) ~= UInt64(0) then
    flags[#flags + 1] = "Cod"
  end
  -- Is Unused Md Flags Set 33 flag set?
  if value:band(0x0000000200000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 33"
  end
  -- Is Unused Md Flags Set 34 flag set?
  if value:band(0x0000000400000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 34"
  end
  -- Is Unused Md Flags Set 35 flag set?
  if value:band(0x0000000800000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 35"
  end
  -- Is Unused Md Flags Set 36 flag set?
  if value:band(0x0000001000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 36"
  end
  -- Is Unused Md Flags Set 37 flag set?
  if value:band(0x0000002000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 37"
  end
  -- Is Unused Md Flags Set 38 flag set?
  if value:band(0x0000004000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 38"
  end
  -- Is Unused Md Flags Set 39 flag set?
  if value:band(0x0000008000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 39"
  end
  -- Is Unused Md Flags Set 40 flag set?
  if value:band(0x0000010000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 40"
  end
  -- Is Active Side flag set?
  if value:band(0x0000020000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Active Side"
  end
  -- Is Passive Side flag set?
  if value:band(0x0000040000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Passive Side"
  end
  -- Is Unused Md Flags Set 43 flag set?
  if value:band(0x0000080000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 43"
  end
  -- Is Unused Md Flags Set 44 flag set?
  if value:band(0x0000100000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 44"
  end
  -- Is Synthetic flag set?
  if value:band(0x0000200000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Synthetic"
  end
  -- Is Rfs flag set?
  if value:band(0x0000400000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Rfs"
  end
  -- Is Unused Md Flags Set 47 flag set?
  if value:band(0x0000800000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 47"
  end
  -- Is Unused Md Flags Set 48 flag set?
  if value:band(0x0001000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 48"
  end
  -- Is Unused Md Flags Set 49 flag set?
  if value:band(0x0002000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 49"
  end
  -- Is Unused Md Flags Set 50 flag set?
  if value:band(0x0004000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 50"
  end
  -- Is Unused Md Flags Set 51 flag set?
  if value:band(0x0008000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 51"
  end
  -- Is Unused Md Flags Set 52 flag set?
  if value:band(0x0010000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 52"
  end
  -- Is Unused Md Flags Set 53 flag set?
  if value:band(0x0020000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 53"
  end
  -- Is Unused Md Flags Set 54 flag set?
  if value:band(0x0040000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 54"
  end
  -- Is Unused Md Flags Set 55 flag set?
  if value:band(0x0080000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 55"
  end
  -- Is Unused Md Flags Set 56 flag set?
  if value:band(0x0100000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 56"
  end
  -- Is Synthetic Passive flag set?
  if value:band(0x0200000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Synthetic Passive"
  end
  -- Is Unused Md Flags Set 58 flag set?
  if value:band(0x0400000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 58"
  end
  -- Is Unused Md Flags Set 59 flag set?
  if value:band(0x0800000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 59"
  end
  -- Is Boc flag set?
  if value:band(0x1000000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Boc"
  end
  -- Is Unused Md Flags Set 61 flag set?
  if value:band(0x2000000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 61"
  end
  -- Is During Discrete Auction flag set?
  if value:band(0x4000000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "During Discrete Auction"
  end
  -- Is Unused Md Flags Set 63 flag set?
  if value:band(UInt64(0x00000000, 0x80000000)) ~= UInt64(0) then
    flags[#flags + 1] = "Unused Md Flags Set 63"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Md Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.bits = function(range, value, packet, parent)

  -- Day: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.day, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.ioc, range, value)

  -- Non Quote: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.non_quote, range, value)

  -- Unused Md Flags Set 3: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_3, range, value)

  -- Unused Md Flags Set 4: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_4, range, value)

  -- Unused Md Flags Set 5: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_5, range, value)

  -- Unused Md Flags Set 6: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_6, range, value)

  -- Unused Md Flags Set 7: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_7, range, value)

  -- Unused Md Flags Set 8: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_8, range, value)

  -- Unused Md Flags Set 9: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_9, range, value)

  -- Unused Md Flags Set 10: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_10, range, value)

  -- Unused Md Flags Set 11: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_11, range, value)

  -- End Of Transaction: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.end_of_transaction, range, value)

  -- Due To Cross Cancel: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.due_to_cross_cancel, range, value)

  -- Second Leg: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.second_leg, range, value)

  -- Unused Md Flags Set 15: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_15, range, value)

  -- Unused Md Flags Set 16: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_16, range, value)

  -- Unused Md Flags Set 17: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_17, range, value)

  -- Unused Md Flags Set 18: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_18, range, value)

  -- Fok: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.fok, range, value)

  -- Replace: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.replace, range, value)

  -- Cancel: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.cancel, range, value)

  -- Mass Cancel: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.mass_cancel, range, value)

  -- Unused Md Flags Set 23: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_23, range, value)

  -- Unused Md Flags Set 24: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_24, range, value)

  -- Unused Md Flags Set 25: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_25, range, value)

  -- Negotiated: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.negotiated, range, value)

  -- Multi Leg: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.multi_leg, range, value)

  -- Unused Md Flags Set 28: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_28, range, value)

  -- Cross Trade: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.cross_trade, range, value)

  -- Unused Md Flags Set 30: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_30, range, value)

  -- Negotiated Match By Ref: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.negotiated_match_by_ref, range, value)

  -- Cod: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.cod, range, value)

  -- Unused Md Flags Set 33: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_33, range, value)

  -- Unused Md Flags Set 34: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_34, range, value)

  -- Unused Md Flags Set 35: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_35, range, value)

  -- Unused Md Flags Set 36: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_36, range, value)

  -- Unused Md Flags Set 37: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_37, range, value)

  -- Unused Md Flags Set 38: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_38, range, value)

  -- Unused Md Flags Set 39: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_39, range, value)

  -- Unused Md Flags Set 40: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_40, range, value)

  -- Active Side: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.active_side, range, value)

  -- Passive Side: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.passive_side, range, value)

  -- Unused Md Flags Set 43: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_43, range, value)

  -- Unused Md Flags Set 44: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_44, range, value)

  -- Synthetic: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.synthetic, range, value)

  -- Rfs: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.rfs, range, value)

  -- Unused Md Flags Set 47: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_47, range, value)

  -- Unused Md Flags Set 48: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_48, range, value)

  -- Unused Md Flags Set 49: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_49, range, value)

  -- Unused Md Flags Set 50: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_50, range, value)

  -- Unused Md Flags Set 51: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_51, range, value)

  -- Unused Md Flags Set 52: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_52, range, value)

  -- Unused Md Flags Set 53: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_53, range, value)

  -- Unused Md Flags Set 54: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_54, range, value)

  -- Unused Md Flags Set 55: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_55, range, value)

  -- Unused Md Flags Set 56: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_56, range, value)

  -- Synthetic Passive: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.synthetic_passive, range, value)

  -- Unused Md Flags Set 58: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_58, range, value)

  -- Unused Md Flags Set 59: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_59, range, value)

  -- Boc: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.boc, range, value)

  -- Unused Md Flags Set 61: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_61, range, value)

  -- During Discrete Auction: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.during_discrete_auction, range, value)

  -- Unused Md Flags Set 63: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.unused_md_flags_set_63, range, value)
end

-- Dissect: Md Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.md_flags, range, display)

  if show.structs then
    moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Book Snapshot Message No M D Entries Group
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group = {}

-- Size: Order Book Snapshot Message No M D Entries Group
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.size =
  moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.transact_time.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.size

-- Display: Order Book Snapshot Message No M D Entries Group
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Snapshot Message No M D Entries Group
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.fields = function(buffer, offset, packet, parent, order_book_snapshot_message_no_m_d_entries_group_index)
  local index = offset

  -- Implicit Order Book Snapshot Message No M D Entries Group Index
  if order_book_snapshot_message_no_m_d_entries_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message_no_m_d_entries_group_index, order_book_snapshot_message_no_m_d_entries_group_index)
    iteration:set_generated()
  end

  -- Md Entry Id Int 64 Null optional: Int64NULL
  index, md_entry_id_int_64_null_optional = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_id_int_64_null_optional.dissect(buffer, index, packet, parent)

  -- Transact Time: uint64
  index, transact_time = moex_spectra_orderslogsnapshot_simba_v9_12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Md Entry Px Decimal 5 Null optional: Decimal5NULL
  index, md_entry_px_decimal_5_null_optional = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_px_decimal_5_null_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Int 64 Null optional: Int64NULL
  index, md_entry_size_int_64_null_optional = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_size_int_64_null_optional.dissect(buffer, index, packet, parent)

  -- Trade Id Int 64 Null optional: Int64NULL
  index, trade_id_int_64_null_optional = moex_spectra_orderslogsnapshot_simba_v9_12_0.trade_id_int_64_null_optional.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 64 fields
  index, md_flags = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags.dissect(buffer, index, packet, parent)

  -- Md Flags 2: Struct of 2 fields
  index, md_flags_2 = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_flags_2.dissect(buffer, index, packet, parent)

  -- Md Entry Type: MDEntryType
  index, md_entry_type = moex_spectra_orderslogsnapshot_simba_v9_12_0.md_entry_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Snapshot Message No M D Entries Group
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.dissect = function(buffer, offset, packet, parent, order_book_snapshot_message_no_m_d_entries_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message_no_m_d_entries_group, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.fields(buffer, offset, packet, parent, order_book_snapshot_message_no_m_d_entries_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.fields(buffer, offset, packet, parent, order_book_snapshot_message_no_m_d_entries_group_index)
  end
end

-- Group Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size = {}

-- Size: Group Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.size =
  moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.size

-- Display: Group Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 8: uint8
  index, num_in_group_uint_8 = moex_spectra_orderslogsnapshot_simba_v9_12_0.num_in_group_uint_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.group_size, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Snapshot Message No M D Entries Groups
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups = {}

-- Calculate size of: Order Book Snapshot Message No M D Entries Groups
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.size

  -- Calculate field size from count
  local order_book_snapshot_message_no_m_d_entries_group_count = buffer(offset + index - 1, 1):uint()
  index = index + order_book_snapshot_message_no_m_d_entries_group_count * 57

  return index
end

-- Display: Order Book Snapshot Message No M D Entries Groups
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Snapshot Message No M D Entries Groups
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_orderslogsnapshot_simba_v9_12_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):uint()

  -- Repeating: Order Book Snapshot Message No M D Entries Group
  for order_book_snapshot_message_no_m_d_entries_group_index = 1, num_in_group_uint_8 do
    index, order_book_snapshot_message_no_m_d_entries_group = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_group.dissect(buffer, index, packet, parent, order_book_snapshot_message_no_m_d_entries_group_index)
  end

  return index
end

-- Dissect: Order Book Snapshot Message No M D Entries Groups
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message_no_m_d_entries_groups, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Snapshot Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message = {}

-- Calculate size of: Order Book Snapshot Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.size

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.size

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.size

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.size

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.size(buffer, offset + index)

  return index
end

-- Display: Order Book Snapshot Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Snapshot Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: Int32
  index, security_id = moex_spectra_orderslogsnapshot_simba_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num Processed U Int 32: uInt32
  index, last_msg_seq_num_processed_u_int_32 = moex_spectra_orderslogsnapshot_simba_v9_12_0.last_msg_seq_num_processed_u_int_32.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = moex_spectra_orderslogsnapshot_simba_v9_12_0.rpt_seq.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id: uint32
  index, exchange_trading_session_id = moex_spectra_orderslogsnapshot_simba_v9_12_0.exchange_trading_session_id.dissect(buffer, index, packet, parent)

  -- Order Book Snapshot Message No M D Entries Groups: Struct of 2 fields
  index, order_book_snapshot_message_no_m_d_entries_groups = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message_no_m_d_entries_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Snapshot Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.order_book_snapshot_message, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message = {}

-- Size: Sequence Reset Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.size =
  moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.size

-- Display: Sequence Reset Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: uInt32
  index, new_seq_no = moex_spectra_orderslogsnapshot_simba_v9_12_0.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sequence_reset_message, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.heartbeat_message = {}

-- Display: Heartbeat Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
moex_spectra_orderslogsnapshot_simba_v9_12_0.payload = {}

-- Dispatch: Payload
moex_spectra_orderslogsnapshot_simba_v9_12_0.payload.dispatch = {
  [1] = moex_spectra_orderslogsnapshot_simba_v9_12_0.heartbeat_message.dissect,
  [2] = moex_spectra_orderslogsnapshot_simba_v9_12_0.sequence_reset_message.dissect,
  [17] = moex_spectra_orderslogsnapshot_simba_v9_12_0.order_book_snapshot_message.dissect,
}

-- Dissect: Payload
moex_spectra_orderslogsnapshot_simba_v9_12_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = moex_spectra_orderslogsnapshot_simba_v9_12_0.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header = {}

-- Size: Sbe Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.size =
  moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.version.size

-- Display: Sbe Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_orderslogsnapshot_simba_v9_12_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, template_id = moex_spectra_orderslogsnapshot_simba_v9_12_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = moex_spectra_orderslogsnapshot_simba_v9_12_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.sbe_header, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.message = {}

-- Calculate size of: Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + moex_spectra_orderslogsnapshot_simba_v9_12_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 3 branches
  index = moex_spectra_orderslogsnapshot_simba_v9_12_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
moex_spectra_orderslogsnapshot_simba_v9_12_0.message.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.message, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.message.fields(buffer, offset, packet, parent)
  end
end

-- Msg Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags = {}

-- Size: Msg Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.size = 2

-- Display: Msg Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Last Fragment flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Last Fragment"
  end
  -- Is Start Of Snapshot flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Start Of Snapshot"
  end
  -- Is End Of Snapshot flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "End Of Snapshot"
  end
  -- Is Incremental Packet flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Incremental Packet"
  end
  -- Is Poss Dup Flag flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Poss Dup Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Msg Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.bits = function(range, value, packet, parent)

  -- Last Fragment: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.last_fragment, range, value)

  -- Start Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.start_of_snapshot, range, value)

  -- End Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.end_of_snapshot, range, value)

  -- Incremental Packet: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.incremental_packet, range, value)

  -- Poss Dup Flag: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.poss_dup_flag, range, value)

  -- Reserved Bits: 11 Bit
  parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.reserved_bits, range, value)
end

-- Dissect: Msg Flags
moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.msg_flags, range, display)

  if show.structs then
    moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Data Packet Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header = {}

-- Size: Market Data Packet Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.size =
  moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.size + 
  moex_spectra_orderslogsnapshot_simba_v9_12_0.sending_time.size

-- Display: Market Data Packet Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32
  index, msg_seq_num = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Msg Size: uint16
  index, msg_size = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Flags: Struct of 6 fields
  index, msg_flags = moex_spectra_orderslogsnapshot_simba_v9_12_0.msg_flags.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64
  index, sending_time = moex_spectra_orderslogsnapshot_simba_v9_12_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.fields.market_data_packet_header, buffer(offset, 0))
    local index = moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet = {}

-- Verify required size of Udp packet
moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.size + moex_spectra_orderslogsnapshot_simba_v9_12_0.sbe_header.size
end

-- Dissect Udp Packet
moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = moex_spectra_orderslogsnapshot_simba_v9_12_0.market_data_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = moex_spectra_orderslogsnapshot_simba_v9_12_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.init()
end

-- Dissector for Moex Spectra OrdersLogSnapshot Simba 9.12.0
function omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0, buffer(), omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.description, "("..buffer:len().." Bytes)")
  return moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local template_id = buffer(18, 2):le_uint()

  -- Heartbeat Message
  if template_id == 1 then
    return true
  end

  -- Sequence Reset Message
  if template_id == 2 then
    return true
  end

  -- Order Book Snapshot Message
  if template_id == 17 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 20 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 19780 then
    return true
  end

  return false
end

-- Verify Version Field
moex_spectra_orderslogsnapshot_simba_v9_12_0.version.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 22 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Moex Spectra OrdersLogSnapshot Simba 9.12.0 (Udp)
local function omi_moex_spectra_orderslogsnapshot_simba_v9_12_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not moex_spectra_orderslogsnapshot_simba_v9_12_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not moex_spectra_orderslogsnapshot_simba_v9_12_0.version.verify(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not moex_spectra_orderslogsnapshot_simba_v9_12_0.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_moex_spectra_orderslogsnapshot_simba_v9_12_0
  omi_moex_spectra_orderslogsnapshot_simba_v9_12_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Moex Spectra OrdersLogSnapshot Simba 9.12.0
omi_moex_spectra_orderslogsnapshot_simba_v9_12_0:register_heuristic("udp", omi_moex_spectra_orderslogsnapshot_simba_v9_12_0_udp_heuristic)

-- Register Moex Spectra OrdersLogSnapshot Simba 9.12.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_moex_spectra_orderslogsnapshot_simba_v9_12_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: 9.12.0
--   Date: Monday, October 19, 2026
--   Specification: MOEX Spectra SIMBA Market Data (SBE) (9.12.0).pdf
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
